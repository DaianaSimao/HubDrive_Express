json.extract! address, :id, :address_name, :number, :cep, :neighborhood, :municipality, :city, :people_id, :address_type_id, :created_at, :updated_at
json.url address_url(address, format: :json)
