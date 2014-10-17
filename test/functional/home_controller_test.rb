require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get region" do
    get :region
    assert_response :success
  end

  test "should get publish" do
    get :publish
    assert_response :success
  end

end
