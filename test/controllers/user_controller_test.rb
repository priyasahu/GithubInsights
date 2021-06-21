require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get project" do
    get user_project_url
    assert_response :success
  end
end
