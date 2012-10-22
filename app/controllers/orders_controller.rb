class OrdersController < ApplicationController
	def create
		@buy_item = Product.find(params[:id])
		@current_buyer = Buyer.find(@current_user)
		@current_buyer.update_attributes(params[:current_buyer])
		@o = @current_buyer.orders.new
		@o.buyer_id = @current_buyer.id
		@o.save 		
		@oi = @o.order_items.new
		@oi.order_id = @o.id
		@oi.product_id = @buy_item
		@oi.quantity = 1
		@oi.save
	end
end
