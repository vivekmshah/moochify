require 'rails_helper'

require 'shoulda/matchers'

describe Equipment do

it { should validate_length_of(:name).is_at_least(1) }
it { should validate_length_of(:name).is_at_most(45) }

it { should validate_numericality_of(:current_daily_cost) }

it {should validate_length_of (:description).is_at_most(255)}

it {should validate_length_of (:availability).is_at_most(100)}

it { should validate_length_of(:condition).is_at_least(1) }
it { should validate_length_of(:condition).is_at_most(100) }

it { should belong_to(:user) }

it { should have_many(:orders) }
	
end
