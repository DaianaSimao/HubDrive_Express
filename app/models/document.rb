class Document < ApplicationRecord
  belongs_to :people
  belongs_to :document_type
end
