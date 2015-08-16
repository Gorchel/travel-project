require 'test_helper'

class TraditionControllerTest < ActionController::TestCase
  test "should get tradition" do
    get :tradition
    assert_response :success
  end

end
