class Admin::AdminController < ApplicationController
	before_filter :authenticate_admin_user!
	protect_from_forgery

end