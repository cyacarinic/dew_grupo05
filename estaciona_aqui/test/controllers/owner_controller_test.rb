require 'test_helper'

class OwnerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_new_url
    assert_response :success
  end

  test "should get edit" do
    get owner_edit_url
    assert_response :success
  end

  test "should get list" do
    get owner_list_url
    assert_response :success
  end

  test "should get search" do
    get owner_search_url
    assert_response :success
  end

end
