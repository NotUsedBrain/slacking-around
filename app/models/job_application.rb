class JobApplication < ApplicationRecord
    belongs_to :job_posting
    # has_many :employees, through: :job_postings
    belongs_to :employee

    enum status: %i[accepted rejected]

    # accepts_nested_attributes_for :job_posting, allow_destroy: true
    # accepts_nested_attributes_for :skills, allow_destroy: true

    # validates(:content, presence: true)
end