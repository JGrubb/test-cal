class Event < ActiveRecord::Base
  
  has_many :occurences, :dependent => :destroy
  accepts_nested_attributes_for :occurences
  
  attr_accessible :name, :description, :occurence_attributes
  validates :name, :description, :presence => true
  
end
