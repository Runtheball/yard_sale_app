FactoryGirl.define do

	factory :yard_sale do |f|
		f.name "Buy My Junk"
		f.sale_date "2014-05-05"
	end

	factory :invalid_yard_sale, class: YardSale do |f|
		f.name nil
	end
end