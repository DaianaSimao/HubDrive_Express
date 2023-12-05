require "application_system_test_case"

class AddressTypesTest < ApplicationSystemTestCase
  setup do
    @address_type = address_types(:one)
  end

  test "visiting the index" do
    visit address_types_url
    assert_selector "h1", text: "Address types"
  end

  test "should create address type" do
    visit address_types_url
    click_on "New address type"

    fill_in "Address type", with: @address_type.address_type
    click_on "Create Address type"

    assert_text "Address type was successfully created"
    click_on "Back"
  end

  test "should update Address type" do
    visit address_type_url(@address_type)
    click_on "Edit this address type", match: :first

    fill_in "Address type", with: @address_type.address_type
    click_on "Update Address type"

    assert_text "Address type was successfully updated"
    click_on "Back"
  end

  test "should destroy Address type" do
    visit address_type_url(@address_type)
    click_on "Destroy this address type", match: :first

    assert_text "Address type was successfully destroyed"
  end
end
