class YardSale < ActiveRecord::Base
	has_many :clothing_items
	has_many :house_items

	validates_presence_of :name, :sale_date

  after_create :send_new_yard_sale_to_all

	scope :past_week, -> { where('sale_date > ?', 1.week.ago) }

  def send_new_yard_sale_to_all
    UserMailer.new_yard_sale_message_to_all(User.all, self)
  end
end