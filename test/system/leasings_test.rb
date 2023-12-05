require "application_system_test_case"

class LeasingsTest < ApplicationSystemTestCase
  setup do
    @leasing = leasings(:one)
  end

  test "visiting the index" do
    visit leasings_url
    assert_selector "h1", text: "Leasings"
  end

  test "should create leasing" do
    visit leasings_url
    click_on "New leasing"

    fill_in "Card", with: @leasing.card_id
    fill_in "Cardholder name", with: @leasing.cardholder_name
    fill_in "Cvv", with: @leasing.cvv
    fill_in "Date leasing", with: @leasing.date_leasing
    fill_in "Due date", with: @leasing.due_date
    fill_in "Leasing type", with: @leasing.leasing_type_id
    fill_in "Leasing value", with: @leasing.leasing_value
    fill_in "Number", with: @leasing.number
    fill_in "Payment method", with: @leasing.payment_method_id
    fill_in "Persona iden number", with: @leasing.persona_iden_number
    fill_in "Return date", with: @leasing.return_date
    click_on "Create Leasing"

    assert_text "Leasing was successfully created"
    click_on "Back"
  end

  test "should update Leasing" do
    visit leasing_url(@leasing)
    click_on "Edit this leasing", match: :first

    fill_in "Card", with: @leasing.card_id
    fill_in "Cardholder name", with: @leasing.cardholder_name
    fill_in "Cvv", with: @leasing.cvv
    fill_in "Date leasing", with: @leasing.date_leasing
    fill_in "Due date", with: @leasing.due_date
    fill_in "Leasing type", with: @leasing.leasing_type_id
    fill_in "Leasing value", with: @leasing.leasing_value
    fill_in "Number", with: @leasing.number
    fill_in "Payment method", with: @leasing.payment_method_id
    fill_in "Persona iden number", with: @leasing.persona_iden_number
    fill_in "Return date", with: @leasing.return_date
    click_on "Update Leasing"

    assert_text "Leasing was successfully updated"
    click_on "Back"
  end

  test "should destroy Leasing" do
    visit leasing_url(@leasing)
    click_on "Destroy this leasing", match: :first

    assert_text "Leasing was successfully destroyed"
  end
end
