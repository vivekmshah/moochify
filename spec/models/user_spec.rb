require 'rails_helper'

require 'shoulda/matchers'

describe User do

	#For password
	it {should ensure_length_of(:password).is_at_least(6)}

	it {should ensure_length_of(:password).is_at_most(20)}

	#For first name
	it {should ensure_length_of(:first_name).is_at_least(1)}

	it {should ensure_length_of(:first_name).is_at_most(25)}

	#For last name
	it {should ensure_length_of(:last_name).is_at_least(1)}

	it {should ensure_length_of(:last_name).is_at_most(25)}

	#For email
	it {should ensure_length_of(:email).is_at_most(100)}

	it { should validate_uniqueness_of(:email) }

	it do
	  should allow_value('a@a.com').
	            for(:email)
	end

	#For phone number
	it { should ensure_length_of(:phone).is_equal_to(10) }

	it { should validate_numericality_of(:phone) }

	#For address 1
	it { should ensure_length_of(:address_1).is_at_least(1) }

	it { should ensure_length_of(:address_1).is_at_most(45) }

	#For address 2
	it { should ensure_length_of(:address_2).is_at_most(45) }

	#For city
	it { should ensure_length_of(:city).is_at_least(1) }

	it { should ensure_length_of(:city).is_at_most(45) }

	#For state
	  it "should only contain characters" do
	    expect(:state).to be_a(string)
	  end

	it { should ensure_length_of(:state).is_equal_to(2) }

	#For zip
	  it "should only contain numbers" do
	    expect(:zip).to be_an(integer)
	  end

	it { should ensure_length_of(:zip).is_equal_to(5) }

	#For bio
	it { should ensure_length_of(:bio).is_at_most(255) }


	#Relationships
	#Has many
	it { should have_many(:equipment) }

	it { should have_many(:orders) }

	it { should have_many(:reviews) }

end