class YardSale < ActiveRecord::Base
	has_many :clothing_items
	has_many :house_items

	validates_presence_of :name, :sale_date


	scope :past_week, -> { where('sale_date > ?', 1.week.ago) }
end