class YardSalesController < ApplicationController

	def index
		@yard_sales = YardSale.all.latest
	end

	def new
		@yard_sale = YardSale.new
	end

	def create
		# debugger
		@yard_sale = YardSale.new(yard_sale_params)
		if @yard_sale.save
			redirect_to yard_sales_path
		else
			render :new
		end
	end

	private 

	def yard_sale_params
		params.require(:yard_sale).permit!
	end
end