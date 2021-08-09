require 'test_helper'

class DeviseControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get devise_new_url
    assert_response :success
  end

  test "should get creat" do
    get devise_creat_url
    assert_response :success
  end

  test "should get new" do
    get devise_new_url
    assert_response :success
  end

end
