require "test_helper"

class CookieClickerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cookie_clicker_index_url
    assert_response :success
  end
end
