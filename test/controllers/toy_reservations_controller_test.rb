require "test_helper"

class ToyReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toy_reservation = toy_reservations(:one)
  end

  test "should get index" do
    get toy_reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_toy_reservation_url
    assert_response :success
  end

  test "should create toy_reservation" do
    assert_difference("ToyReservation.count") do
      post toy_reservations_url, params: { toy_reservation: { fulfilled: @toy_reservation.fulfilled, start_date: @toy_reservation.start_date, toy_type_id: @toy_reservation.toy_type_id, user_id: @toy_reservation.user_id } }
    end

    assert_redirected_to toy_reservation_url(ToyReservation.last)
  end

  test "should show toy_reservation" do
    get toy_reservation_url(@toy_reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_toy_reservation_url(@toy_reservation)
    assert_response :success
  end

  test "should update toy_reservation" do
    patch toy_reservation_url(@toy_reservation), params: { toy_reservation: { fulfilled: @toy_reservation.fulfilled, start_date: @toy_reservation.start_date, toy_type_id: @toy_reservation.toy_type_id, user_id: @toy_reservation.user_id } }
    assert_redirected_to toy_reservation_url(@toy_reservation)
  end

  test "should destroy toy_reservation" do
    assert_difference("ToyReservation.count", -1) do
      delete toy_reservation_url(@toy_reservation)
    end

    assert_redirected_to toy_reservations_url
  end
end
