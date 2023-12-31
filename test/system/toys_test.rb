require "application_system_test_case"

class ToysTest < ApplicationSystemTestCase
  setup do
    @toy = toys(:one)
  end

  test "visiting the index" do
    visit toys_url
    assert_selector "h1", text: "Toys"
  end

  test "should create toy" do
    visit toys_url
    click_on "New toy"

    fill_in "Toy status", with: @toy.toy_status_id
    fill_in "Toy type", with: @toy.toy_type_id
    click_on "Create Toy"

    assert_text "Toy was successfully created"
    click_on "Back"
  end

  test "should update Toy" do
    visit toy_url(@toy)
    click_on "Edit this toy", match: :first

    fill_in "Toy status", with: @toy.toy_status_id
    fill_in "Toy type", with: @toy.toy_type_id
    click_on "Update Toy"

    assert_text "Toy was successfully updated"
    click_on "Back"
  end

  test "should destroy Toy" do
    visit toy_url(@toy)
    click_on "Destroy this toy", match: :first

    assert_text "Toy was successfully destroyed"
  end
end
