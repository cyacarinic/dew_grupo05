require 'test_helper'

class ParkinghistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkinghistory = parkinghistories(:one)
  end

  test "should get index" do
    get parkinghistories_url
    assert_response :success
  end

  test "should get new" do
    get new_parkinghistory_url
    assert_response :success
  end

  test "should create parkinghistory" do
    assert_difference('Parkinghistory.count') do
      post parkinghistories_url, params: { parkinghistory: { fecha_cancelacion: @parkinghistory.fecha_cancelacion, fecha_fin: @parkinghistory.fecha_fin, fecha_inicio: @parkinghistory.fecha_inicio, fecha_registro: @parkinghistory.fecha_registro, motivo_cancelacion: @parkinghistory.motivo_cancelacion, parking_id: @parkinghistory.parking_id, user_id: @parkinghistory.user_id } }
    end

    assert_redirected_to parkinghistory_url(Parkinghistory.last)
  end

  test "should show parkinghistory" do
    get parkinghistory_url(@parkinghistory)
    assert_response :success
  end

  test "should get edit" do
    get edit_parkinghistory_url(@parkinghistory)
    assert_response :success
  end

  test "should update parkinghistory" do
    patch parkinghistory_url(@parkinghistory), params: { parkinghistory: { fecha_cancelacion: @parkinghistory.fecha_cancelacion, fecha_fin: @parkinghistory.fecha_fin, fecha_inicio: @parkinghistory.fecha_inicio, fecha_registro: @parkinghistory.fecha_registro, motivo_cancelacion: @parkinghistory.motivo_cancelacion, parking_id: @parkinghistory.parking_id, user_id: @parkinghistory.user_id } }
    assert_redirected_to parkinghistory_url(@parkinghistory)
  end

  test "should destroy parkinghistory" do
    assert_difference('Parkinghistory.count', -1) do
      delete parkinghistory_url(@parkinghistory)
    end

    assert_redirected_to parkinghistories_url
  end
end
