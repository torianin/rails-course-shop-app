class Admin::OrdersController < Admin::AdminController
	def index
		@orders = Order.all
	end
	def edit
		@products = Product.all
		@categories = Category.all
	end	
	def productedit
		@product = Product.find(params[:id])
		@categories = Category.all
	end	
end