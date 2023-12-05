class LeasingCar < ApplicationRecord
  belongs_to :leasing_type
  belongs_to :payment_method
  belongs_to :card
  belongs_to :car_model
  belongs_to :people
end
