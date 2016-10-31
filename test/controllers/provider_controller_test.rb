require 'test_helper'

class ProviderControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get provider_new_url
    assert_response :success
  end

end
