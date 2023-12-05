require "application_system_test_case"

class CarModelsTest < ApplicationSystemTestCase
  setup do
    @car_model = car_models(:one)
  end

  test "visiting the index" do
    visit car_models_url
    assert_selector "h1", text: "Car models"
  end

  test "should create car model" do
    visit car_models_url
    click_on "New car model"

    fill_in "Brand type", with: @car_model.brand_type_id
    fill_in "Chassis", with: @car_model.chassis
    fill_in "Color", with: @car_model.color
    fill_in "Country origin", with: @car_model.country_origin
    fill_in "Model names", with: @car_model.model_names
    fill_in "Number doors", with: @car_model.number_doors
    fill_in "Plate", with: @car_model.plate
    fill_in "Platform", with: @car_model.platform_id
    fill_in "Renavam", with: @car_model.renavam
    click_on "Create Car model"

    assert_text "Car model was successfully created"
    click_on "Back"
  end

  test "should update Car model" do
    visit car_model_url(@car_model)
    click_on "Edit this car model", match: :first

    fill_in "Brand type", with: @car_model.brand_type_id
    fill_in "Chassis", with: @car_model.chassis
    fill_in "Color", with: @car_model.color
    fill_in "Country origin", with: @car_model.country_origin
    fill_in "Model names", with: @car_model.model_names
    fill_in "Number doors", with: @car_model.number_doors
    fill_in "Plate", with: @car_model.plate
    fill_in "Platform", with: @car_model.platform_id
    fill_in "Renavam", with: @car_model.renavam
    click_on "Update Car model"

    assert_text "Car model was successfully updated"
    click_on "Back"
  end

  test "should destroy Car model" do
    visit car_model_url(@car_model)
    click_on "Destroy this car model", match: :first

    assert_text "Car model was successfully destroyed"
  end
end
