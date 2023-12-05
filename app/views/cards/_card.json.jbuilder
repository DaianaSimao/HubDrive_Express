json.extract! card, :id, :card_brand, :card_network, :created_at, :updated_at
json.url card_url(card, format: :json)
