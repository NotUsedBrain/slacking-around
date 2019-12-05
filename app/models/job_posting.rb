class JobPosting < ApplicationRecord
  belongs_to :profession
  belongs_to :employer
  has_many :employees, through: :job_applications
  has_many :feedbacks
  has_many :job_applications

  validates(:content, presence: true)
end
