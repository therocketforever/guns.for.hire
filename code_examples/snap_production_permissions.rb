### SNAP Production Diffrences ###
#     © 2013 Don Graziano        #
#     therocketforever@me.com    #
#     +1 (734) 747-0412          #
##################################

require 'csv'

class ReportOfDifferences

  attr_reader :duplicate_rows, :nms01_unique_rows, :nms02_unique_rows, :report_of_diffrences

  def initialize
    @nms01 = CSV.read("UI_Config_NMS01.csv")
    @nms02 = CSV.read("UI_Config_NMS02.csv")
    @netsap = CSV.read("UI_Config_NETSAP.csv")

    @report_of_diffrences = []

    # IF a row exists in NMS01 that ALSO exists in NMS02 THEN add the row to duplicate keys
    # Populate `duplicate_keys` array from rows in both `NMS01` & `NMS02`

    duplicate_rows = []
    @duplicate_rows = @nms02.each { |v| if @nms01.include? v then duplicate_rows << v end }

    # UNLESS a row in NMS01 exists in NMS02 add the row to nms01_unique_rows
    # Populate `nms02_unique_rows` from rows in `NMS02` NOT in `NMS01`

    nms01_unique_rows = []
    @nms01_unique_rows = @nms01.each { |v| unless @nms02.include? v then nms01_unique_rows << v end }

    # UNLESS a row in NMS02 exists in NMS01 add the row to nms02_unique_rows
    # Populate `nms01_unique_rows` from rows in `NMS01` NOT in `NMS02`

    nms02_unique_rows = []
    @nms02_unique_rows = @nms02.each { |v| unless @nms01.include? v then nms02_unique_rows << v end }
  end

  def adjust_header
    @report_of_diffrences << @nms01[0]
    @report_of_diffrences[0].map! { |x| x == "config_value" ? "netsap" : x }.flatten!
    @report_of_diffrences[0].insert -2, "nms01", "nms02"
    @report_of_diffrences.each {|r|}
  end

  def build_report
    self.adjust_header
    @netsap.delete_at 0

    # Add rows from netsap as baseline
    @netsap.each {|r| @report_of_diffrences << r}
    @report_of_diffrences.each_with_index {|r,i| unless i == 0 then (r.insert 6, "") && (r.insert 7, "") end}
    
    REPORT.report_of_diffrences.each_with_index {|r, i| unless i == 0 then @nms01.each {|nms01| if r.include? nms01[4] then r.insert 6, nms01[5] end} end} 
    REPORT.report_of_diffrences.each_with_index {|r, i| unless i == 0 then @nms02.each {|nms02| if r.include? nms02[4] then r.insert 7, nms02[5] end} end}
  end

  def generate
    self.build_report
    
    # Write the arrays `@duplicate_rows`,`@nms01_unique_rows` & `@nms2_unique_rows` and place them in the `build` sub directory
    CSV.open("build/UI_Config_Production_duplicated_rows.csv", "w") do | csv |
      REPORT.duplicate_rows.each { | row | csv << row }
    end


    # Reset column headders with correct headers or they will be wrong!
    REPORT.nms01_unique_rows[0].delete "nms01"
    REPORT.nms01_unique_rows[0].delete "nms02"
    REPORT.nms01_unique_rows[0].map! { |x| x == "netsap" ? "config_value" : x }.flatten!
    
    
    CSV.open("build/UI_Config_Production_nms01_unique_rows.csv", "w") do | csv |
      REPORT.nms01_unique_rows.each { | row | csv << row }
    end

    CSV.open("build/UI_Config_Production_nms02_unique_rows.csv", "w") do | csv |
      REPORT.nms02_unique_rows.each { | row | csv << row }
    end

    CSV.open("build/UI_Config_Diffrence_by_set_value.csv", "w") do | csv |
      REPORT.report_of_diffrences.each { | row | csv << row } 
    end

    CSV.open("build/UI_Config_Consolidated_Report.csv", "w") do | csv |
      csv << ["Diffrences in Set UI_Config options by value"]
      REPORT.report_of_diffrences.each { | row | csv << row }
      csv << ["Rows Duplicated in both NMS01 & NMS02"]
      REPORT.duplicate_rows.each { | row | csv << row }
      csv << ["Rows Unique to NMS01"]
      REPORT.nms01_unique_rows.each { | row | csv << row }
      csv << ["Rows Unique to NMS02"]
      REPORT.nms02_unique_rows.each { | row | csv << row }
    end
  end

end

# Instantiate a new `ReportOfDiffrences` object & set it as the value of the `REPORT` constant

REPORT = ReportOfDifferences.new
REPORT.generate