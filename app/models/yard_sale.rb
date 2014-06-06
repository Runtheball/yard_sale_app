class YardSale < ActiveRecord::Base
	has_many :clothing_items
	has_many :house_items

	validates_presence_of :name, :sale_date

  after_create :send_new_yard_sale_to_group

	scope :past_week, -> { where('sale_date > ?', 1.week.ago) }
  scope :latest, -> { order(:sale_date => :asc)}

  def send_new_yard_sale_to_group
    UserMailer.new_yard_sale_message_to_group(User.all, self)
  end
  
end