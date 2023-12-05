require "application_system_test_case"

class RentaltypesTest < ApplicationSystemTestCase
  setup do
    @rentaltype = rentaltypes(:one)
  end

  test "visiting the index" do
    visit rentaltypes_url
    assert_selector "h1", text: "Rentaltypes"
  end

  test "should create rentaltype" do
    visit rentaltypes_url
    click_on "New rentaltype"

    fill_in "Rental type", with: @rentaltype.rental_type
    click_on "Create Rentaltype"

    assert_text "Rentaltype was successfully created"
    click_on "Back"
  end

  test "should update Rentaltype" do
    visit rentaltype_url(@rentaltype)
    click_on "Edit this rentaltype", match: :first

    fill_in "Rental type", with: @rentaltype.rental_type
    click_on "Update Rentaltype"

    assert_text "Rentaltype was successfully updated"
    click_on "Back"
  end

  test "should destroy Rentaltype" do
    visit rentaltype_url(@rentaltype)
    click_on "Destroy this rentaltype", match: :first

    assert_text "Rentaltype was successfully destroyed"
  end
end
