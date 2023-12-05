require "application_system_test_case"

class TypeAddressesTest < ApplicationSystemTestCase
  setup do
    @type_address = type_addresses(:one)
  end

  test "visiting the index" do
    visit type_addresses_url
    assert_selector "h1", text: "Type addresses"
  end

  test "should create type address" do
    visit type_addresses_url
    click_on "New type address"

    fill_in "Type address", with: @type_address.type_address
    click_on "Create Type address"

    assert_text "Type address was successfully created"
    click_on "Back"
  end

  test "should update Type address" do
    visit type_address_url(@type_address)
    click_on "Edit this type address", match: :first

    fill_in "Type address", with: @type_address.type_address
    click_on "Update Type address"

    assert_text "Type address was successfully updated"
    click_on "Back"
  end

  test "should destroy Type address" do
    visit type_address_url(@type_address)
    click_on "Destroy this type address", match: :first

    assert_text "Type address was successfully destroyed"
  end
end
