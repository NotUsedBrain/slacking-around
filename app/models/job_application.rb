class JobApplication < ApplicationRecord
    belongs_to :job_posting
    belongs_to :employee

    include Discard::Model
    default_scope -> { kept }
    scope :kept, -> { undiscarded.joins(:job_posting).merge(JobPosting.kept) }

    enum status: { accepted: 0, rejected: 1, applied: 2 }

    # accepts_nested_attributes_for :employer, allow_destroy: true

    # validates(:content, presence: true)
end