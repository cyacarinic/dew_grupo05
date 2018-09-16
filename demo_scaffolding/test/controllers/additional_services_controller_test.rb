require 'test_helper'

class AdditionalServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additional_service = additional_services(:one)
  end

  test "should get index" do
    get additional_services_url
    assert_response :success
  end

  test "should get new" do
    get new_additional_service_url
    assert_response :success
  end

  test "should create additional_service" do
    assert_difference('AdditionalService.count') do
      post additional_services_url, params: { additional_service: { descripcion: @additional_service.descripcion, nombre: @additional_service.nombre, parking_id: @additional_service.parking_id, precio_hora: @additional_service.precio_hora } }
    end

    assert_redirected_to additional_service_url(AdditionalService.last)
  end

  test "should show additional_service" do
    get additional_service_url(@additional_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_additional_service_url(@additional_service)
    assert_response :success
  end

  test "should update additional_service" do
    patch additional_service_url(@additional_service), params: { additional_service: { descripcion: @additional_service.descripcion, nombre: @additional_service.nombre, parking_id: @additional_service.parking_id, precio_hora: @additional_service.precio_hora } }
    assert_redirected_to additional_service_url(@additional_service)
  end

  test "should destroy additional_service" do
    assert_difference('AdditionalService.count', -1) do
      delete additional_service_url(@additional_service)
    end

    assert_redirected_to additional_services_url
  end
end
