require 'test_helper'

class PrizeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prize_show_url
    assert_response :success
  end

end
