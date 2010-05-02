class PartInstance < ActiveRecord::Base
  belongs_to :part
  belongs_to :user
  validates_presence_of :part_id, :number, :location
  named_scope :not_null, :conditions => "number > 0"
  named_scope :owned_by, lambda { |user| {:conditions => ['user_id = ?', user.id]} }
end
