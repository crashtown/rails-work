require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get hotel" do
    get pages_hotel_url
    assert_response :success
  end

end
