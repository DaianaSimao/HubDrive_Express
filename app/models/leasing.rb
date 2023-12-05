class Leasing < ApplicationRecord
  belongs_to :leasing_type
  belongs_to :payment_method
  belongs_to :card
end
