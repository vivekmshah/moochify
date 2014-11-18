class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :bio

      t.timestamps
    end
  end
end