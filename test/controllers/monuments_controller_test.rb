require 'test_helper'

class MonumentsControllerTest < ActionController::TestCase
  test "should get stone" do
    get :stone
    assert_response :success
  end

  test "should get wooden" do
    get :wooden
    assert_response :success
  end

  test "should get castle" do
    get :castle
    assert_response :success
  end

  test "should get palace" do
    get :palace
    assert_response :success
  end

  test "should get nature" do
    get :nature
    assert_response :success
  end

  test "should get other" do
    get :other
    assert_response :success
  end

  test "should get museum" do
    get :museum
    assert_response :success
  end

end
