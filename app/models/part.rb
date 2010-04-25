class Part < ActiveRecord::Base
  has_many :part_instances
  
  validates_presence_of :partno, :name
  acts_as_taggable
  
end
