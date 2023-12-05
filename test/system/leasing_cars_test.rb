require "application_system_test_case"

class LeasingCarsTest < ApplicationSystemTestCase
  setup do
    @leasing_car = leasing_cars(:one)
  end

  test "visiting the index" do
    visit leasing_cars_url
    assert_selector "h1", text: "Leasing cars"
  end

  test "should create leasing car" do
    visit leasing_cars_url
    click_on "New leasing car"

    fill_in "Car model", with: @leasing_car.car_model_id
    fill_in "Card", with: @leasing_car.card_id
    fill_in "Cardholder name", with: @leasing_car.cardholder_name
    fill_in "Cvv", with: @leasing_car.cvv
    fill_in "Date leasing", with: @leasing_car.date_leasing
    fill_in "Due date", with: @leasing_car.due_date
    fill_in "Leasing type", with: @leasing_car.leasing_type_id
    fill_in "Leasing value", with: @leasing_car.leasing_value
    fill_in "Number", with: @leasing_car.number
    fill_in "Payment method", with: @leasing_car.payment_method_id
    fill_in "People", with: @leasing_car.people_id
    fill_in "Personal iden number", with: @leasing_car.personal_iden_number
    fill_in "Return date", with: @leasing_car.return_date
    click_on "Create Leasing car"

    assert_text "Leasing car was successfully created"
    click_on "Back"
  end

  test "should update Leasing car" do
    visit leasing_car_url(@leasing_car)
    click_on "Edit this leasing car", match: :first

    fill_in "Car model", with: @leasing_car.car_model_id
    fill_in "Card", with: @leasing_car.card_id
    fill_in "Cardholder name", with: @leasing_car.cardholder_name
    fill_in "Cvv", with: @leasing_car.cvv
    fill_in "Date leasing", with: @leasing_car.date_leasing
    fill_in "Due date", with: @leasing_car.due_date
    fill_in "Leasing type", with: @leasing_car.leasing_type_id
    fill_in "Leasing value", with: @leasing_car.leasing_value
    fill_in "Number", with: @leasing_car.number
    fill_in "Payment method", with: @leasing_car.payment_method_id
    fill_in "People", with: @leasing_car.people_id
    fill_in "Personal iden number", with: @leasing_car.personal_iden_number
    fill_in "Return date", with: @leasing_car.return_date
    click_on "Update Leasing car"

    assert_text "Leasing car was successfully updated"
    click_on "Back"
  end

  test "should destroy Leasing car" do
    visit leasing_car_url(@leasing_car)
    click_on "Destroy this leasing car", match: :first

    assert_text "Leasing car was successfully destroyed"
  end
end
