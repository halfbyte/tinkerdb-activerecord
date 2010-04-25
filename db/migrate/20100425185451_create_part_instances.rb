class CreatePartInstances < ActiveRecord::Migration
  def self.up
    create_table :part_instances do |t|
      t.integer :part_id
      t.integer :number
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :part_instances
  end
end
