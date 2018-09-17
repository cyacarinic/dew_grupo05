require 'test_helper'

class DocumenttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @documenttype = documenttypes(:one)
  end

  test "should get index" do
    get documenttypes_url
    assert_response :success
  end

  test "should get new" do
    get new_documenttype_url
    assert_response :success
  end

  test "should create documenttype" do
    assert_difference('Documenttype.count') do
      post documenttypes_url, params: { documenttype: { nombre: @documenttype.nombre } }
    end

    assert_redirected_to documenttype_url(Documenttype.last)
  end

  test "should show documenttype" do
    get documenttype_url(@documenttype)
    assert_response :success
  end

  test "should get edit" do
    get edit_documenttype_url(@documenttype)
    assert_response :success
  end

  test "should update documenttype" do
    patch documenttype_url(@documenttype), params: { documenttype: { nombre: @documenttype.nombre } }
    assert_redirected_to documenttype_url(@documenttype)
  end

  test "should destroy documenttype" do
    assert_difference('Documenttype.count', -1) do
      delete documenttype_url(@documenttype)
    end

    assert_redirected_to documenttypes_url
  end
end
