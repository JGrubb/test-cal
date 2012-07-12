class Cancellation < ActiveRecord::Base
  belongs_to :event
  attr_accessible :date
end
