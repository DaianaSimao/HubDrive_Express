require "test_helper"

class BrandTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand_type = brand_types(:one)
  end

  test "should get index" do
    get brand_types_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_type_url
    assert_response :success
  end

  test "should create brand_type" do
    assert_difference("BrandType.count") do
      post brand_types_url, params: { brand_type: { brand_name: @brand_type.brand_name } }
    end

    assert_redirected_to brand_type_url(BrandType.last)
  end

  test "should show brand_type" do
    get brand_type_url(@brand_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_type_url(@brand_type)
    assert_response :success
  end

  test "should update brand_type" do
    patch brand_type_url(@brand_type), params: { brand_type: { brand_name: @brand_type.brand_name } }
    assert_redirected_to brand_type_url(@brand_type)
  end

  test "should destroy brand_type" do
    assert_difference("BrandType.count", -1) do
      delete brand_type_url(@brand_type)
    end

    assert_redirected_to brand_types_url
  end
end
