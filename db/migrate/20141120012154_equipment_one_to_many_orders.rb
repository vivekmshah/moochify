class EquipmentOneToManyOrders < ActiveRecord::Migration
  def change
    add_column :orders, :equipment_id, :integer
  end
end
