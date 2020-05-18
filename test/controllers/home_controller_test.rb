require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inddex" do
    get home_inddex_url
    assert_response :success
  end

end
