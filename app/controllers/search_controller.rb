class SearchController < ApplicationController
	def index
 		@q = Product.search(params[:q])
 		@products = @q.result
	end
end