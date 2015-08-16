require 'test_helper'

class TownControllerTest < ActionController::TestCase
  test "should get volin" do
    get :volin
    assert_response :success
  end

  test "should get vinnichina" do
    get :vinnichina
    assert_response :success
  end

end
