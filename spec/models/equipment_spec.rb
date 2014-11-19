require 'rails_helper'

require 'shoulda/matchers'

describe Equipment do

  #For name
	it { should validate_length_of(:name).is_at_least(1) }

	it { should validate_length_of(:name).is_at_most(45) }

	#For current daily cost
	it { should validate_numericality_of(:current_daily_cost) }

  #For description
	it {should validate_length_of(:description).is_at_most(255)}

	it {should validate_length_of(:availability).is_at_most(100)}

  #For condition
	it { should validate_length_of(:condition).is_at_least(1) }

	it { should validate_length_of(:condition).is_at_most(100) }


  #Relationships
  #belongs_to
	it { should belong_to(:user) }

  #has_many
	it { should have_many(:orders) }
	
end
