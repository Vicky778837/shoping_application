require "test_helper"

class AddControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get add_index_url
    assert_response :success
  end

  test "should get new" do
    get add_new_url
    assert_response :success
  end

  test "should get show" do
    get add_show_url
    assert_response :success
  end
end
