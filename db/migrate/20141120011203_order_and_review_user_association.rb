class OrderAndReviewUserAssociation < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :reviews, :user_id, :integer
  end
end


