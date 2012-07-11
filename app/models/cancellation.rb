class Cancellation < ActiveRecord::Base
  belongs_to :event
  belongs_to :event_recurrence
  attr_accessible :date
end
