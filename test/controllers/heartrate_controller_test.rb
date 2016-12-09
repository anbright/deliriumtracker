require 'test_helper'

class HeartrateControllerTest < ActionDispatch::IntegrationTest
  test "should get add_to_api" do
    get heartrate_add_to_api_url
    assert_response :success
  end

end
