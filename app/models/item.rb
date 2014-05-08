class Item < ActiveRecord::Base
	belongs_to :yard_sale
	has_many :notes, as: :notable
end