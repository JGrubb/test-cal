class Cancellation < ActiveRecord::Base
  belongs_to :event
  attr_accessible :date
  
  def self.get_cancellations(cancellations=[])
    c = []
    cancellations.each do |can|
      c << can[:date]
    end
    c
  end
  
end
