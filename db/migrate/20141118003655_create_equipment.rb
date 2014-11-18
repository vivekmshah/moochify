class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.float :current_daily_cost
      t.string :description
      t.string :availability

      t.timestamps
    end
  end
end
