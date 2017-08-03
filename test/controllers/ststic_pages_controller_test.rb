require 'test_helper'

class StsticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get ststic_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get ststic_pages_help_url
    assert_response :success
  end

end
