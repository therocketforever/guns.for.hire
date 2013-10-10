#### RunRun Waybill Code Sample ##
#     © 2013 Don Graziano        #
#     therocketforever@me.com    #
#     +1 (734) 747-0412          #
##################################

class Waybill
  include DataMapper::Resource
  property :id, Serial
  property :number, String
  property :service, Enum[ :basic, :rush, :direct, :emergency, :dd_basic, :dd_rush, :overnight ], :default => :basic
  property :status, Enum[ :pending, :dispatched, :transit, :delivered, :closed ], :default => :pending
  property :charge, String
  property :credit, String
  property :contracted, Boolean, :default => false
  property :dispatched_by, String
  property :delivered_by, String
  property :signature, String
  property :created_at, DateTime
  property :updated_at, DateTime
  property :dispatched_at, DateTime
  property :up_at, DateTime
  property :delivered_at, DateTime
  property :closed_at, DateTime
  property :origin, Text
  property :destination, Text
  property :weight, Integer
  property :wait, Integer
  
  belongs_to :account
  
  def chargeish
    unless self[:service].nil?
      if Account.get(self[:account_id]).contract.nil?
        rate = (Rate.get( self[:service]).charge)
      else
        contract = Account.get(self[:account_id]).contract
        crate = contract.contract_rates.first(:service => self[:service])
        stdrate = (Rate.get( self[:service]).charge)
        if self[:contracted] == true || crate.pool.to_i > 0
          genmod = BigDecimal.new( contract.general_modifier.percent_of(stdrate) )
          modifier = contract.contract_rates.first(:service => self[:service]).modifier
          adjust = BigDecimal.new( modifier.percent_of(stdrate) )
          rate = stdrate - (genmod + adjust)
        else
          rate = stdrate
        end
      end    
    else
      rate = BigDecimal.new("3.00")
    end
  
    unless self[:weight].nil?
      if self[:weight] > 10
        weight = self[:weight]
      else
        weight = BigDecimal.new("0.00")
      end
    else
      weight = BigDecimal.new("0.00")
    end
  
    unless self[:wait].nil?
      if self[:wait] >5
        wait = self[:wait]
      else
        wait = BigDecimal.new("0.00")
      end
    else
      wait = BigDecimal.new("0.00")
    end
  
    x = rate + ( weight * BigDecimal.new("0.10")) + ( wait * BigDecimal.new("0.10"))
    charge = (sprintf "%4.2f", x )
    return ["$", charge ].join
  
  end

end