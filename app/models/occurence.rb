class Occurence < ActiveRecord::Base
  
  attr_accessible :ends, :interval, :starts
  belongs_to :event
  
  
end
