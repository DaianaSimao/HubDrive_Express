require "application_system_test_case"

class PaymentCardsTest < ApplicationSystemTestCase
  setup do
    @payment_card = payment_cards(:one)
  end

  test "visiting the index" do
    visit payment_cards_url
    assert_selector "h1", text: "Payment cards"
  end

  test "should create payment card" do
    visit payment_cards_url
    click_on "New payment card"

    fill_in "Card brand", with: @payment_card.card_brand
    fill_in "Card network", with: @payment_card.card_network
    click_on "Create Payment card"

    assert_text "Payment card was successfully created"
    click_on "Back"
  end

  test "should update Payment card" do
    visit payment_card_url(@payment_card)
    click_on "Edit this payment card", match: :first

    fill_in "Card brand", with: @payment_card.card_brand
    fill_in "Card network", with: @payment_card.card_network
    click_on "Update Payment card"

    assert_text "Payment card was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment card" do
    visit payment_card_url(@payment_card)
    click_on "Destroy this payment card", match: :first

    assert_text "Payment card was successfully destroyed"
  end
end
