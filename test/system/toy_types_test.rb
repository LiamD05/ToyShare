require "application_system_test_case"

class ToyTypesTest < ApplicationSystemTestCase
  setup do
    @toy_type = toy_types(:one)
  end

  test "visiting the index" do
    visit toy_types_url
    assert_selector "h1", text: "Toy types"
  end

  test "should create toy type" do
    visit toy_types_url
    click_on "New toy type"

    fill_in "Max age", with: @toy_type.max_age
    fill_in "Min age", with: @toy_type.min_age
    fill_in "Name", with: @toy_type.name
    fill_in "Quantity", with: @toy_type.quantity
    fill_in "Size", with: @toy_type.size
    fill_in "Weight", with: @toy_type.weight
    click_on "Create Toy type"

    assert_text "Toy type was successfully created"
    click_on "Back"
  end

  test "should update Toy type" do
    visit toy_type_url(@toy_type)
    click_on "Edit this toy type", match: :first

    fill_in "Max age", with: @toy_type.max_age
    fill_in "Min age", with: @toy_type.min_age
    fill_in "Name", with: @toy_type.name
    fill_in "Quantity", with: @toy_type.quantity
    fill_in "Size", with: @toy_type.size
    fill_in "Weight", with: @toy_type.weight
    click_on "Update Toy type"

    assert_text "Toy type was successfully updated"
    click_on "Back"
  end

  test "should destroy Toy type" do
    visit toy_type_url(@toy_type)
    click_on "Destroy this toy type", match: :first

    assert_text "Toy type was successfully destroyed"
  end
end
