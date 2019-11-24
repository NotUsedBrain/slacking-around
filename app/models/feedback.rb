class Feedback < ApplicationRecord
    belongs_to :job_posting
    belongs_to :employee
end