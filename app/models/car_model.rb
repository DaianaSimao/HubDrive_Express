class CarModel < ApplicationRecord
  belongs_to :brand_type
  belongs_to :platform
end
