require 'test_helper'

class SankaControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sanka_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sanka_destroy_url
    assert_response :success
  end

end
