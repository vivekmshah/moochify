class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :equipment
  has_many :reviews
end
