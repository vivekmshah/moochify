class Equipment < ActiveRecord::Base


  validates_presence_of :name
  validates_presence_of :current_daily_cost
  validates_numericality_of :current_daily_cost
  validates_presence_of :description
  validates_presence_of :availability
  
  belongs_to :user
  has_many :orders

  # The code below is for displaying the avatar photos
  # for both users and pieces of equipment

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end