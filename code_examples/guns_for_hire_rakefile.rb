#### guns.for.hire Source Code ###
#     © 2013 Don Graziano        #
#     therocketforever@me.com    #
#     +1 (734) 747-0412          #
##################################

# Curriculum Vitae Assembly
# Quick app to process markdown components into a markdown formated Curriculum Vitae for Don Graziano

require "bundler/setup"
Bundler.require(:development)

$cv_sections = {}

namespace :build_tasks do
  task :parse_source_assets do
    puts "Parsing CV Source Assets..."

    Dir.glob("assets/*.md") do |source_asset|
      puts "Processing #{source_asset}..."
      

      #this reads the file name without the extension & convert to symbol
      key_name = File.basename(source_asset, '.*').split("_")[1].to_sym

      #Hold on to the file for processing
      #file_by_line = []
      
      file_by_line = {}
      line_num = 0

      #load file by line, strip whitespace & newline, add string to file_by_line array
      #File.foreach(source_asset) {|x| file_by_line << x.chomp.strip }   

      #load file by line, strip whitespace & newline, add string to file_by_line hash
      File.foreach(source_asset) {|x| file_by_line.merge!(line_num += 1 => x.chomp.strip) } 
      
      #Add the section to the sections hash
      $cv_sections.merge!(key_name => file_by_line)
    end

  end

  task :construct_cv_object do
    puts "Constructing CV Object..."

    # An object to store the CV data
    class CurriculumVitae

      def initialize

        # This is the bigest uglyist map/reduce maybe ever & get all the arrays in @cv_sections. Fuckyeahmapreduce.
        # Aditionaly, set the CV @ivars to the sections & set the accessors. dynamicly. boom.
        @cv_data = $cv_sections.each {|section| section.reduce({}) {|accu, (section_key, section_body)| accu[section_key] ||= {}; accu }.map{|k,h| h[:section_key] = k;h}}
        
        # Populate @sections with section titles as :symbols
        @cv_data.keys.each {|key| define_singleton_method(key) { instance_variable_get("@#{key}") }}
        @cv_data.each { |name, value| instance_variable_set("@#{name}", value) } 

      end

      def sections
        @cv_data.keys
      end
    end

    CV = CurriculumVitae.new

  end


  # This task will a straight textfile as markdown. It will strip out any lines with kramdown style delimiters ("{:")
  task :assemble_cv do
    puts "Building CV..."
    
    # An array to hold our polished markdown
    clean_data = []
    
    # Process all sections into an array of clean markdown strings
    # Also strip out inline HTML from kramdown for straight markdown
    #CV.sections.each{ |section| CV.send(section).values.each {|line| clean_data << [line, "  \n"].join unless line[0..1] == "{:"}}
    CV.sections.each{ |section| CV.send(section).values.each {|line| clean_data << unless line.empty? then Nokogiri::HTML(([line, "  \n"].join unless line[0..1] == "{:")).text else ([line, "  \n"].join unless line[0..1] == "{:") end  }}

    # Make sure the build directory is clean
    puts "Checking build Directory..."
    Dir.mkdir("build") unless File.exists? "build"
    File.delete("build/cv.md") if File.exists? "build/cv.md"

    # Write it all out to build/cv.md
    puts "Writeing CV data to `build/cv.md`"
    clean_data.each {|line| File.open("build/cv.md", 'a'){|f| f.write( line )}}


    #binding.pry
    puts "CV build complete!"
  end

  # This task will build a markdown file for the web useing kramdowdown delimiters to set style classes 
  task :assemble_cv_styled do
    puts "Building CV with styles..."
    
    # An array to hold our polished markdown
    clean_data = []
    
    # Process all sections into an array of clean markdown strings
    #CV.sections.each{ |section| CV.send(section).values.each {|line| unless line[0] == "#" || line.empty? then clean_data << [line, "  \n"].join else clean_data << line end }}
    CV.sections.each{ |section| CV.send(section).values.each {|line| clean_data << [line, "  \n"].join }}

    # Make sure the build directory is clean
    puts "Checking build Directory..."
    Dir.mkdir("build") unless File.exists? "build"
    File.delete("build/cv_styled.md") if File.exists? "build/cv_styled.md"

    # Write it all out to build/cv.md
    puts "Writeing CV data to `build/cv_styled.md`"
    clean_data.each {|line| File.open("build/cv_styled.md", 'a'){|f| f.write( line )}}


    #binding.pry
    puts "CV build with style classes complete!"

  end

end

task :all => ["build_tasks:parse_source_assets", "build_tasks:construct_cv_object", "build_tasks:assemble_cv", "build_tasks:assemble_cv_styled"]

task :build_unstyled => ["build_tasks:parse_source_assets", "build_tasks:construct_cv_object", "build_tasks:assemble_cv"]

task :build_styled => ["build_tasks:parse_source_assets", "build_tasks:construct_cv_object", "build_tasks:assemble_cv_styled"]

task :default => [:all]