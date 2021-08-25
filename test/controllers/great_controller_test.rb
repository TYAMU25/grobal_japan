require 'test_helper'

class GreatControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get great_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get great_destroy_url
    assert_response :success
  end
end
