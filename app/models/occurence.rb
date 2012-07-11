class Occurence < ActiveRecord::Base
  belongs_to :event
  attr_accessible :ends, :interval, :starts
end
