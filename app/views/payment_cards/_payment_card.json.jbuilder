json.extract! payment_card, :id, :card_brand, :card_network, :created_at, :updated_at
json.url payment_card_url(payment_card, format: :json)
