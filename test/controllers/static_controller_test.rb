require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_home_url
    assert_response :success
  end

  test "should get test" do
    get static_test_url
    assert_response :success
  end

  test "should get styles" do
    get static_styles_url
    assert_response :success
  end

end
