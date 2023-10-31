require "application_system_test_case"

class ToyReservationsTest < ApplicationSystemTestCase
  setup do
    @toy_reservation = toy_reservations(:one)
  end

  test "visiting the index" do
    visit toy_reservations_url
    assert_selector "h1", text: "Toy reservations"
  end

  test "should create toy reservation" do
    visit toy_reservations_url
    click_on "New toy reservation"

    check "Fulfilled" if @toy_reservation.fulfilled
    fill_in "Start date", with: @toy_reservation.start_date
    fill_in "Toy type", with: @toy_reservation.toy_type_id
    fill_in "User", with: @toy_reservation.user_id
    click_on "Create Toy reservation"

    assert_text "Toy reservation was successfully created"
    click_on "Back"
  end

  test "should update Toy reservation" do
    visit toy_reservation_url(@toy_reservation)
    click_on "Edit this toy reservation", match: :first

    check "Fulfilled" if @toy_reservation.fulfilled
    fill_in "Start date", with: @toy_reservation.start_date
    fill_in "Toy type", with: @toy_reservation.toy_type_id
    fill_in "User", with: @toy_reservation.user_id
    click_on "Update Toy reservation"

    assert_text "Toy reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Toy reservation" do
    visit toy_reservation_url(@toy_reservation)
    click_on "Destroy this toy reservation", match: :first

    assert_text "Toy reservation was successfully destroyed"
  end
end
