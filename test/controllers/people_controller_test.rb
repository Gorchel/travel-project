require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  test "should get people" do
    get :people
    assert_response :success
  end

end
