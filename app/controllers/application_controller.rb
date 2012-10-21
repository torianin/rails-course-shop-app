class ApplicationController < ActionController::Base
  protect_from_forgery 
   
  before_filter :create_user

  def create_user

  		if cookies[:current_user].nil?
  			u = Buyer.new
  			u.save
  			cookies.permanent[:current_user] = u.id
  		end

  		@current_user = cookies[:current_user]

  	end

end
