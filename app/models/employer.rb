class Employer < ApplicationRecord
  has_one :employer_profile, dependent: :destroy
  accepts_nested_attributes_for :employer_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :job_postings
end
