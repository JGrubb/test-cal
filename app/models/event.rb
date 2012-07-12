class Event < ActiveRecord::Base
  
  has_many :occurences, :dependent => :destroy
  accepts_nested_attributes_for :occurences, :allow_destroy => true
  
  attr_accessible :name, :description, :occurences_attributes
  validates :name, :description, :presence => true
  
end
