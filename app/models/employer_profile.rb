class EmployerProfile < ApplicationRecord
  belongs_to :employer

  validates :first_name, :last_name, :business_name, presence: true

  has_one_attached :avatar

  def full_name
    first_name + ' ' + last_name
  end
end
