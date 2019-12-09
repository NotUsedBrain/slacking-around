class Comment < ApplicationRecord
  belongs_to :employer
  belongs_to :employee_Profile
  validates :employer_id, presence: true
  validates :employee_profile_id, presence: true
  validates :content, presence: true
end
