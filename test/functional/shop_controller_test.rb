require 'test_helper'

class ShopControllerTest < ActionController::TestCase
 def test_index
 	get :index
    assert_response :success
    assert_template 'shop/index'
 end
end
