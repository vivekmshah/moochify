class AddAvatarColumnsToEquipment < ActiveRecord::Migration
  def self.up
    add_attachment :equipment, :avatar
  end

  def self.down
    remove_attachment :equipment, :avatar
  end
end
