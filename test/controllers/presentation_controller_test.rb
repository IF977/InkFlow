require 'test_helper'

class PresentationControllerTest < ActionDispatch::IntegrationTest
  test "should get tree" do
    get presentation_tree_url
    assert_response :success
  end

end
