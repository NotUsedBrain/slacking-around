class EmployeeProfile < ApplicationRecord
  belongs_to :employee
  belongs_to :profession, optional: true

  has_one_attached :avatar
end
