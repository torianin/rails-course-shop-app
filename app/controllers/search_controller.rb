class SearchController < ActionController::Base
	def index
 		@q = Product.search(params[:q])
 		@products = @q.result
	end
end