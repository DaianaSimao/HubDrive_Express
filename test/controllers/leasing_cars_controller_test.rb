require "test_helper"

class LeasingCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leasing_car = leasing_cars(:one)
  end

  test "should get index" do
    get leasing_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_leasing_car_url
    assert_response :success
  end

  test "should create leasing_car" do
    assert_difference("LeasingCar.count") do
      post leasing_cars_url, params: { leasing_car: { car_model_id: @leasing_car.car_model_id, card_id: @leasing_car.card_id, cardholder_name: @leasing_car.cardholder_name, cvv: @leasing_car.cvv, date_leasing: @leasing_car.date_leasing, due_date: @leasing_car.due_date, leasing_type_id: @leasing_car.leasing_type_id, leasing_value: @leasing_car.leasing_value, number: @leasing_car.number, payment_method_id: @leasing_car.payment_method_id, people_id: @leasing_car.people_id, personal_iden_number: @leasing_car.personal_iden_number, return_date: @leasing_car.return_date } }
    end

    assert_redirected_to leasing_car_url(LeasingCar.last)
  end

  test "should show leasing_car" do
    get leasing_car_url(@leasing_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_leasing_car_url(@leasing_car)
    assert_response :success
  end

  test "should update leasing_car" do
    patch leasing_car_url(@leasing_car), params: { leasing_car: { car_model_id: @leasing_car.car_model_id, card_id: @leasing_car.card_id, cardholder_name: @leasing_car.cardholder_name, cvv: @leasing_car.cvv, date_leasing: @leasing_car.date_leasing, due_date: @leasing_car.due_date, leasing_type_id: @leasing_car.leasing_type_id, leasing_value: @leasing_car.leasing_value, number: @leasing_car.number, payment_method_id: @leasing_car.payment_method_id, people_id: @leasing_car.people_id, personal_iden_number: @leasing_car.personal_iden_number, return_date: @leasing_car.return_date } }
    assert_redirected_to leasing_car_url(@leasing_car)
  end

  test "should destroy leasing_car" do
    assert_difference("LeasingCar.count", -1) do
      delete leasing_car_url(@leasing_car)
    end

    assert_redirected_to leasing_cars_url
  end
end
