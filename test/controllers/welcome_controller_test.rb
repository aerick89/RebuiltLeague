require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get champs" do
    get welcome_champs_url
    assert_response :success
  end

  test "should get favorites" do
    get welcome_favorites_url
    assert_response :success
  end

end
