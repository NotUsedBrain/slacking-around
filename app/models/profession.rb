class Profession < ApplicationRecord
  has_many :job_postings
  has_many :employee_profiles
end
