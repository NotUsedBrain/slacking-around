class EmployerProfile < ApplicationRecord
  belongs_to :employer

  validates :business_name, presence: true

  has_one_attached :avatar
end
