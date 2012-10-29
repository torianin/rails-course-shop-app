class ProductsController < ActionController::Base
	def index
 		@q = Product.search(params[:q])
 		@finded = @q.result
	end
	def update
		@current_product = Product.find(params[:id])
		@new_product_information = params[:product]
		@current_product.nazwa = @new_product_information["nazwa"]
		@current_product.opis = @new_product_information["opis"]
		@current_product.save	
	end
end
