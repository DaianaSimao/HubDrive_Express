require "test_helper"

class TypeAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_address = type_addresses(:one)
  end

  test "should get index" do
    get type_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_type_address_url
    assert_response :success
  end

  test "should create type_address" do
    assert_difference("TypeAddress.count") do
      post type_addresses_url, params: { type_address: { type_address: @type_address.type_address } }
    end

    assert_redirected_to type_address_url(TypeAddress.last)
  end

  test "should show type_address" do
    get type_address_url(@type_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_address_url(@type_address)
    assert_response :success
  end

  test "should update type_address" do
    patch type_address_url(@type_address), params: { type_address: { type_address: @type_address.type_address } }
    assert_redirected_to type_address_url(@type_address)
  end

  test "should destroy type_address" do
    assert_difference("TypeAddress.count", -1) do
      delete type_address_url(@type_address)
    end

    assert_redirected_to type_addresses_url
  end
end
