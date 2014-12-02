class User < ActiveRecord::Base

	has_secure_password

  # validates_presence_of :first_name
  # validates_presence_of :last_name
  
  # validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_uniqueness_of :email
  validates_length_of :email, maximum: 100

  # validates_length_of :password, minimum: 6, maximum: 20

  # validates_length_of :phone, is: 10
  # validates_numericality_of :phone

  # validates_presence_of :address_1
  # validates_length_of :address_1, maximum: 45

  # validates_length_of :address_2, maximum: 45

  # validates_presence_of :city

  # validates_length_of :state, is: 2

  # validates_numericality_of :zip
  # validates_length_of :zip, is: 5

  # validates_length_of :bio, maximum: 255

	has_many :equipment
  has_many :reviews
  has_many :orders

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  geocoded_by :get_address
  after_validation :geocode

  def get_address
    [address_1, address_2, city, state, zip].join(' ')
  end

end
