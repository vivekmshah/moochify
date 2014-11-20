class User < ActiveRecord::Base

	has_secure_password

  validates_length_of :first_name, minimum: 1, maximum: 25
  validates_length_of :last_name, minimum: 1, maximum: 25
  
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_uniqueness_of :email
  validates_length_of :email, maximum: 100

  validates_length_of :password, minimum: 6, maximum: 20

  validates_length_of :phone, is: 10
  validates_numericality_of :phone

  validates_length_of :address_1, minimum: 1, maximum: 45
  validates_length_of :address_2, maximum: 45

  validates_length_of :city, minimum: 1, maximum: 45

  validates_length_of :state, is: 2

  validates_length_of :zip, is: 5

  validates_length_of :bio, maximum: 255

	has_many :equipment

  has_many :reviews

  has_many :orders

end
