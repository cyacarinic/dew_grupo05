require 'test_helper'

class UserGendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_gender = user_genders(:one)
  end

  test "should get index" do
    get user_genders_url
    assert_response :success
  end

  test "should get new" do
    get new_user_gender_url
    assert_response :success
  end

  test "should create user_gender" do
    assert_difference('UserGender.count') do
      post user_genders_url, params: { user_gender: { nombre: @user_gender.nombre } }
    end

    assert_redirected_to user_gender_url(UserGender.last)
  end

  test "should show user_gender" do
    get user_gender_url(@user_gender)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_gender_url(@user_gender)
    assert_response :success
  end

  test "should update user_gender" do
    patch user_gender_url(@user_gender), params: { user_gender: { nombre: @user_gender.nombre } }
    assert_redirected_to user_gender_url(@user_gender)
  end

  test "should destroy user_gender" do
    assert_difference('UserGender.count', -1) do
      delete user_gender_url(@user_gender)
    end

    assert_redirected_to user_genders_url
  end
end
