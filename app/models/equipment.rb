class Equipment < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :current_daily_cost
  validates_numericality_of :current_daily_cost
  validates_presence_of :description
  validates_presence_of :availability
  
	belongs_to :user
  has_many :orders

end