require "test_helper"

class LeasingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leasing = leasings(:one)
  end

  test "should get index" do
    get leasings_url
    assert_response :success
  end

  test "should get new" do
    get new_leasing_url
    assert_response :success
  end

  test "should create leasing" do
    assert_difference("Leasing.count") do
      post leasings_url, params: { leasing: { card_id: @leasing.card_id, cardholder_name: @leasing.cardholder_name, cvv: @leasing.cvv, date_leasing: @leasing.date_leasing, due_date: @leasing.due_date, leasing_type_id: @leasing.leasing_type_id, leasing_value: @leasing.leasing_value, number: @leasing.number, payment_method_id: @leasing.payment_method_id, persona_iden_number: @leasing.persona_iden_number, return_date: @leasing.return_date } }
    end

    assert_redirected_to leasing_url(Leasing.last)
  end

  test "should show leasing" do
    get leasing_url(@leasing)
    assert_response :success
  end

  test "should get edit" do
    get edit_leasing_url(@leasing)
    assert_response :success
  end

  test "should update leasing" do
    patch leasing_url(@leasing), params: { leasing: { card_id: @leasing.card_id, cardholder_name: @leasing.cardholder_name, cvv: @leasing.cvv, date_leasing: @leasing.date_leasing, due_date: @leasing.due_date, leasing_type_id: @leasing.leasing_type_id, leasing_value: @leasing.leasing_value, number: @leasing.number, payment_method_id: @leasing.payment_method_id, persona_iden_number: @leasing.persona_iden_number, return_date: @leasing.return_date } }
    assert_redirected_to leasing_url(@leasing)
  end

  test "should destroy leasing" do
    assert_difference("Leasing.count", -1) do
      delete leasing_url(@leasing)
    end

    assert_redirected_to leasings_url
  end
end
