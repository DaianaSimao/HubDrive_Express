require "test_helper"

class RentaltypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rentaltype = rentaltypes(:one)
  end

  test "should get index" do
    get rentaltypes_url
    assert_response :success
  end

  test "should get new" do
    get new_rentaltype_url
    assert_response :success
  end

  test "should create rentaltype" do
    assert_difference("Rentaltype.count") do
      post rentaltypes_url, params: { rentaltype: { rental_type: @rentaltype.rental_type } }
    end

    assert_redirected_to rentaltype_url(Rentaltype.last)
  end

  test "should show rentaltype" do
    get rentaltype_url(@rentaltype)
    assert_response :success
  end

  test "should get edit" do
    get edit_rentaltype_url(@rentaltype)
    assert_response :success
  end

  test "should update rentaltype" do
    patch rentaltype_url(@rentaltype), params: { rentaltype: { rental_type: @rentaltype.rental_type } }
    assert_redirected_to rentaltype_url(@rentaltype)
  end

  test "should destroy rentaltype" do
    assert_difference("Rentaltype.count", -1) do
      delete rentaltype_url(@rentaltype)
    end

    assert_redirected_to rentaltypes_url
  end
end
