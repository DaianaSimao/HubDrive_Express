require "test_helper"

class PaymentCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_card = payment_cards(:one)
  end

  test "should get index" do
    get payment_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_card_url
    assert_response :success
  end

  test "should create payment_card" do
    assert_difference("PaymentCard.count") do
      post payment_cards_url, params: { payment_card: { card_brand: @payment_card.card_brand, card_network: @payment_card.card_network } }
    end

    assert_redirected_to payment_card_url(PaymentCard.last)
  end

  test "should show payment_card" do
    get payment_card_url(@payment_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_card_url(@payment_card)
    assert_response :success
  end

  test "should update payment_card" do
    patch payment_card_url(@payment_card), params: { payment_card: { card_brand: @payment_card.card_brand, card_network: @payment_card.card_network } }
    assert_redirected_to payment_card_url(@payment_card)
  end

  test "should destroy payment_card" do
    assert_difference("PaymentCard.count", -1) do
      delete payment_card_url(@payment_card)
    end

    assert_redirected_to payment_cards_url
  end
end
