require 'test_helper'

class SearchControllerControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get search_controller_index_url
    assert_response :success
  end
end
