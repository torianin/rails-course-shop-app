class ShopController < ApplicationController

	def index
		@categories = Category.all
		@products = Product.all
	end 

	def product
		@product = Product.find(params[:id])
	end

	def category
		@category = Category.find(params[:id])
	end

end