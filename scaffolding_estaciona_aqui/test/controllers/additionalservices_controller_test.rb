require 'test_helper'

class AdditionalservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additionalservice = additionalservices(:one)
  end

  test "should get index" do
    get additionalservices_url
    assert_response :success
  end

  test "should get new" do
    get new_additionalservice_url
    assert_response :success
  end

  test "should create additionalservice" do
    assert_difference('Additionalservice.count') do
      post additionalservices_url, params: { additionalservice: { descripcion: @additionalservice.descripcion, nombre: @additionalservice.nombre, parking_id: @additionalservice.parking_id, precio_hora: @additionalservice.precio_hora } }
    end

    assert_redirected_to additionalservice_url(Additionalservice.last)
  end

  test "should show additionalservice" do
    get additionalservice_url(@additionalservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_additionalservice_url(@additionalservice)
    assert_response :success
  end

  test "should update additionalservice" do
    patch additionalservice_url(@additionalservice), params: { additionalservice: { descripcion: @additionalservice.descripcion, nombre: @additionalservice.nombre, parking_id: @additionalservice.parking_id, precio_hora: @additionalservice.precio_hora } }
    assert_redirected_to additionalservice_url(@additionalservice)
  end

  test "should destroy additionalservice" do
    assert_difference('Additionalservice.count', -1) do
      delete additionalservice_url(@additionalservice)
    end

    assert_redirected_to additionalservices_url
  end
end
