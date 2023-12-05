json.extract! document, :id, :people_id, :document_type_id, :number_document, :expiration_date, :created_at, :updated_at
json.url document_url(document, format: :json)
