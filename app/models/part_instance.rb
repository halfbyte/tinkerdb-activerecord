class PartInstance < ActiveRecord::Base
  belongs_to :part
  validates_presence_of :part_id, :number, :location
  named_scope :not_null, :conditions => "number > 0"
end
