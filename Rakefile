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
        @cv_sections = $cv_sections
        @section_keys = @cv_sections.keys
       # @sections = @cv_sections.each { | , value| instance_variable_set("@#{name}", value) }
        binding.pry

        #$cv_sections.values.each {|s| s.values.each {|l| puts l}}
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