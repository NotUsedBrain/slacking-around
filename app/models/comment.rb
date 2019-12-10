class Comment < ApplicationRecord
  belongs_to :employer
  belongs_to :employee_profile
  validates :content, presence: true
end
