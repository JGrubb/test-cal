class Event < ActiveRecord::Base
  
  attr_accessible :name, :description
  attr_accessible :occurence_attributes
  has_many :occurences
  validates :name, :description, :presence => true
  accepts_nested_attributes_for :occurences, :allow_destroy => true
  
end
