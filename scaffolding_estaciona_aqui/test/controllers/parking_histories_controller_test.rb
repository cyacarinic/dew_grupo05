require 'test_helper'

class ParkingHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_history = parking_histories(:one)
  end

  test "should get index" do
    get parking_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_history_url
    assert_response :success
  end

  test "should create parking_history" do
    assert_difference('ParkingHistory.count') do
      post parking_histories_url, params: { parking_history: { fecha_cancelacion: @parking_history.fecha_cancelacion, fecha_fin: @parking_history.fecha_fin, fecha_inicio: @parking_history.fecha_inicio, fecha_registro: @parking_history.fecha_registro, motivo_cancelacion: @parking_history.motivo_cancelacion, parking_id: @parking_history.parking_id, user_id: @parking_history.user_id } }
    end

    assert_redirected_to parking_history_url(ParkingHistory.last)
  end

  test "should show parking_history" do
    get parking_history_url(@parking_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_history_url(@parking_history)
    assert_response :success
  end

  test "should update parking_history" do
    patch parking_history_url(@parking_history), params: { parking_history: { fecha_cancelacion: @parking_history.fecha_cancelacion, fecha_fin: @parking_history.fecha_fin, fecha_inicio: @parking_history.fecha_inicio, fecha_registro: @parking_history.fecha_registro, motivo_cancelacion: @parking_history.motivo_cancelacion, parking_id: @parking_history.parking_id, user_id: @parking_history.user_id } }
    assert_redirected_to parking_history_url(@parking_history)
  end

  test "should destroy parking_history" do
    assert_difference('ParkingHistory.count', -1) do
      delete parking_history_url(@parking_history)
    end

    assert_redirected_to parking_histories_url
  end
end
