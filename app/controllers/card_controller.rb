class CardController < ApplicationController
	def index
		@current_buyer = Buyer.find(@current_user)
		@products = Product.all
	end
end
