class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :start_date
      t.date :end_date
      t.float :daily_cost

      t.timestamps
    end
  end
end
