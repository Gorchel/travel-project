require 'test_helper'

class RouteControllerTest < ActionController::TestCase
  test "should get city" do
    get :city
    assert_response :success
  end

  test "should get nature" do
    get :nature
    assert_response :success
  end

  test "should get mountain" do
    get :mountain
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get weekend" do
    get :weekend
    assert_response :success
  end

end
