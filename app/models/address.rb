class Address < ApplicationRecord
  belongs_to :people
  belongs_to :address_type
end
