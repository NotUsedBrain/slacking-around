class JobPosting < ApplicationRecord
    belongs_to :employer
    has_many :skills, through: :job_postings_skills
    has_many :feedbacks, through: :job_applications
    has_many :applications

    validates(
        :content,
        presence: true
    )
end