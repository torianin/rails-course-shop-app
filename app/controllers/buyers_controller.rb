class BuyersController < ApplicationController
	def index
		@current_buyer = Buyer.find(@current_user)
	end
	def update
		@current_buyer = Buyer.find(@current_user)
		@buyer_informations = params[:buyer]
		@current_buyer.first_name = @buyer_informations["first_name"]
		@current_buyer.last_name = @buyer_informations["last_name"]
		@current_buyer.save
	end
end
