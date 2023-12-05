json.extract! leasing_car, :id, :leasing_type_id, :date_leasing, :return_date, :leasing_value, :payment_method_id, :card_id, :number, :cvv, :due_date, :cardholder_name, :personal_iden_number, :car_model_id, :people_id, :created_at, :updated_at
json.url leasing_car_url(leasing_car, format: :json)
