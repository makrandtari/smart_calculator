require "test_helper"

class CalulatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calulator_index_url
    assert_response :success
  end
end
