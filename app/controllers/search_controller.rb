class SearchController < ActionController::Base
	def index
 		@q = Product.search(params[:q])
 		@finded = @q.result
	end
end