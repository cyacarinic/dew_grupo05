require 'test_helper'

class ParkingtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkingtype = parkingtypes(:one)
  end

  test "should get index" do
    get parkingtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_parkingtype_url
    assert_response :success
  end

  test "should create parkingtype" do
    assert_difference('Parkingtype.count') do
      post parkingtypes_url, params: { parkingtype: { nombre: @parkingtype.nombre } }
    end

    assert_redirected_to parkingtype_url(Parkingtype.last)
  end

  test "should show parkingtype" do
    get parkingtype_url(@parkingtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_parkingtype_url(@parkingtype)
    assert_response :success
  end

  test "should update parkingtype" do
    patch parkingtype_url(@parkingtype), params: { parkingtype: { nombre: @parkingtype.nombre } }
    assert_redirected_to parkingtype_url(@parkingtype)
  end

  test "should destroy parkingtype" do
    assert_difference('Parkingtype.count', -1) do
      delete parkingtype_url(@parkingtype)
    end

    assert_redirected_to parkingtypes_url
  end
end
