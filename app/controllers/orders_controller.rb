class OrdersController < ApplicationController
	def create
		@buy_item = Product.find(params[:id])
		@current_buyer = Buyer.find(@current_user)
	end
end
