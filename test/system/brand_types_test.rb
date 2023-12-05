require "application_system_test_case"

class BrandTypesTest < ApplicationSystemTestCase
  setup do
    @brand_type = brand_types(:one)
  end

  test "visiting the index" do
    visit brand_types_url
    assert_selector "h1", text: "Brand types"
  end

  test "should create brand type" do
    visit brand_types_url
    click_on "New brand type"

    fill_in "Brand name", with: @brand_type.brand_name
    click_on "Create Brand type"

    assert_text "Brand type was successfully created"
    click_on "Back"
  end

  test "should update Brand type" do
    visit brand_type_url(@brand_type)
    click_on "Edit this brand type", match: :first

    fill_in "Brand name", with: @brand_type.brand_name
    click_on "Update Brand type"

    assert_text "Brand type was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand type" do
    visit brand_type_url(@brand_type)
    click_on "Destroy this brand type", match: :first

    assert_text "Brand type was successfully destroyed"
  end
end
