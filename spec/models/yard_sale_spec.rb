require 'spec_helper'

describe YardSale do
	
	it 'should be invalid without a name' do
		y = FactoryGirl.build(:invalid_yard_sale)
		y.should_not be_valid
	end

	it 'should be scopable for the past week' do
		y1 = FactoryGirl.create(:yard_sale, sale_date: 2.days.ago)
		y2 = FactoryGirl.create(:yard_sale, sale_date: 5.weeks.ago)


		YardSale.past_week.should eq([y1])
		# YardSale.past_week.should_not include(y2)
		# YardSale.past_week.should include(y1)
	end
end