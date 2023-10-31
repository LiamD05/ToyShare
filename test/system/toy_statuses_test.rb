require "application_system_test_case"

class ToyStatusesTest < ApplicationSystemTestCase
  setup do
    @toy_status = toy_statuses(:one)
  end

  test "visiting the index" do
    visit toy_statuses_url
    assert_selector "h1", text: "Toy statuses"
  end

  test "should create toy status" do
    visit toy_statuses_url
    click_on "New toy status"

    fill_in "Name", with: @toy_status.name
    click_on "Create Toy status"

    assert_text "Toy status was successfully created"
    click_on "Back"
  end

  test "should update Toy status" do
    visit toy_status_url(@toy_status)
    click_on "Edit this toy status", match: :first

    fill_in "Name", with: @toy_status.name
    click_on "Update Toy status"

    assert_text "Toy status was successfully updated"
    click_on "Back"
  end

  test "should destroy Toy status" do
    visit toy_status_url(@toy_status)
    click_on "Destroy this toy status", match: :first

    assert_text "Toy status was successfully destroyed"
  end
end
