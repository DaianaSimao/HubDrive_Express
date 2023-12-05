require "application_system_test_case"

class CardTypesTest < ApplicationSystemTestCase
  setup do
    @card_type = card_types(:one)
  end

  test "visiting the index" do
    visit card_types_url
    assert_selector "h1", text: "Card types"
  end

  test "should create card type" do
    visit card_types_url
    click_on "New card type"

    fill_in "Card type name", with: @card_type.card_type_name
    click_on "Create Card type"

    assert_text "Card type was successfully created"
    click_on "Back"
  end

  test "should update Card type" do
    visit card_type_url(@card_type)
    click_on "Edit this card type", match: :first

    fill_in "Card type name", with: @card_type.card_type_name
    click_on "Update Card type"

    assert_text "Card type was successfully updated"
    click_on "Back"
  end

  test "should destroy Card type" do
    visit card_type_url(@card_type)
    click_on "Destroy this card type", match: :first

    assert_text "Card type was successfully destroyed"
  end
end
