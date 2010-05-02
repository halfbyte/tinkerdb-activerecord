class AddUserIdToPartInstances < ActiveRecord::Migration
  def self.up
    add_column :part_instances, :user_id, :integer
  end

  def self.down
    remove_column :part_instances, :user_id
  end
end
