# CV Assembly

require 'ostruct'
require "pry"

$cv_sections = {}

namespace :build_tasks do
  task :parse_source_assets do
    p "Parsing CV Source Assets..."

    Dir.glob("assets/*.md") do |source_asset|
      p "Processing #{source_asset}..."
      

      #this reads the file name without the extension & convert to symbol
      key_name = File.basename(source_asset, '.*').to_sym

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
    p "Constructing CV Object..."

    # An object to store the CV data
    class CurriculumVitae

      attr_reader :sections

      def initialize

        # This is the bigest uglyist map/reduce maybe ever & get all the arrays in @cv_sections. Fuckyeahmapreduce.
        # Aditionaly, set the CV @ivars to the sections & set the accessors. dynamicly. boom.
        @cv_data = $cv_sections.each {|section| section.reduce({}) {|accu, (section_key, section_body)| accu[section_key] ||= {}; accu }.map{|k,h| h[:section_key] = k;h}}
        @cv_data.keys.each {|key| define_singleton_method(key) { instance_variable_get("@#{key}") }}
        @cv_data.each { |name, value| instance_variable_set("@#{name}", value) }  
        binding.pry
      end
    end

    CV = CurriculumVitae.new

    binding.pry
  end

  task :assemble_cv do
    p "Building CV..."
  end

end

task :all => ["build_tasks:parse_source_assets", "build_tasks:construct_cv_object", "build_tasks:assemble_cv"]
task :default => [:all]