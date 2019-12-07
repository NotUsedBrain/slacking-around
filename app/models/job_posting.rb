class JobPosting < ApplicationRecord
  belongs_to :profession
  belongs_to :employer
  has_many :employees, through: :job_applications
  has_many :feedbacks
  has_many :job_applications

  include Discard::Model
  default_scope -> { kept }

  validates(:content, presence: true)
end
