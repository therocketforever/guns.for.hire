# The Void API Source Sample

get '/tiles' do
    puts request.GET.inspect
    puts "Params: #{params}"
    puts "This is the ALL Tiles Route"
    tiles = {:tiles => []}
    keys = params.mash
    case
      when keys.has_key?(:code)
        puts "Looking up Tile by Code..."
        agent = Agent.summon(code: keys[:code].to_s)
        #binding.pry
        agent.evaluate_bounded_tiles if agent.tile.bounded_tiles.count < 7
        agent.evaluate_adjacentcy if agent.tile.adjacent_tiles.count < 6
        tiles[:tiles] << agent.as_json
        agent.adjacent_tiles.each {|t| tiles[:tiles] << Agent.summon(code: t).as_json }
      when keys.has_key?(:latitude && :longitude)
        puts "Looking up Tile by Coordinate Pair..."
        begin
          raise ArgumentError, "Zone Level is Required" unless keys.has_key?(:level)
        rescue ArgumentError
          puts "Query is missing Zone Level! defaulting to Level 7..."
          keys.merge!(:level => 7)
        end
        code = Hex.encode(keys[:latitude].to_f, keys[:longitude].to_f, keys[:level].to_i)
        agent = Agent.summon(code: code)
        tiles[:tiles] << agent.as_json
        agent.adjacent_tiles.each {|t| tiles[:tiles] << Agent.summon(code: t).as_json }
        
      when keys.has_key?(:ids)
        puts "Recived ID: Looking up Tiles by Code..."
        keys[:ids].each {|id| tiles[:tiles] << Agent.summon(code: id).as_json}
      
      else
        puts "Invalid Query"
        begin
          raise ArgumentError, "Invalid Query"
        rescue ArgumentError
          tiles[:tiles] << tile = {:id => "Invalid Query", :code => "Invalid Query"}
        end
       
    end
    @tiles = Psych.to_json(tiles)
end