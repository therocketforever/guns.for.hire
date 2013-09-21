class Application < Sinatra::Base

  enable :logging

  configure(:production) { Bundler.require(:production) }
  configure(:development) { Bundler.require(:development) }
  configure(:test) {}

  get '/' do
    slim :blue
  end

  get '/dot' do
    "dot"
  end

  get '/space' do
    "space"
  end

  get '/blue' do
    "blue"
  end



end