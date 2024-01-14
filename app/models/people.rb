class People < ApplicationRecord
  belongs_to :user, optional: true

  validates :address, presence: true, if: :additional_fields_required?
  validates :birth_date, presence: true, if: :additional_fields_required?
  validates :telephone, presence: true, if: :additional_fields_required?
  validates :cpf, uniqueness: true, presence: true, if: :additional_fields_required?
  validates :name, presence: true, if: :additional_fields_required?
  validates :last_name, presence: true, if: :additional_fields_required?

  def additional_fields_required?
    self.user.nil?
  end
end
