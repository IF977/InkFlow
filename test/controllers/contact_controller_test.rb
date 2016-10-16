require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get us" do
    get contact_us_url
    assert_response :success
  end

end
