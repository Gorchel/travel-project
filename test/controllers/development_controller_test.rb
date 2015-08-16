require 'test_helper'

class DevelopmentControllerTest < ActionController::TestCase
  test "should get development" do
    get :development
    assert_response :success
  end

end
