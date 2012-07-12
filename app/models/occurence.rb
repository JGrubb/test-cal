class Occurence < ActiveRecord::Base
  
  attr_accessible :ends, :interval, :starts
  belongs_to :event
  
  def self.build_recurrences(id=nil)
    occurences = []
    base_occurences = id ? Event.find(id).occurences : Occurence.all
    cancellations = id ? Event.find(id).cancellations : Cancellation.all
    base_occurences.each do |o|
      unless o.interval.empty?
        r = Recurrence.new( :starts => o.starts.to_date,
                            :every => :day,
                            :interval => o.interval.to_i, 
                            :until => o.ends.to_date  )
        r.events.each do |e|
          new_date = o.dup
          new_date.starts = e
          occurences.push new_date
        end
      else
        occurences.push o
      end
    end
    occurences
  end
  
end
