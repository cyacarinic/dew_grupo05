require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_edit_url
    assert_response :success
  end

  test "should get list" do
    get user_list_url
    assert_response :success
  end

  test "should get search" do
    get user_search_url
    assert_response :success
  end

end
