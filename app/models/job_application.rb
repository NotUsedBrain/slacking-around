class JobApplication < ApplicationRecord
    belongs_to :job_posting
    belongs_to :employee

    enum status: { accepted: 0, rejected: 1, applied: 2 }

    # def status_label(job_posting)
    #     case job_posting.status
    #     when :accepted
    #         content_tag(:div, 'Accepted', class: 'label label-warning')
    #     when :rejected
    #         content_tag(:div, 'Rejected', class: 'label label-warning')
    #     when :applied
    #         content_tag(:div, 'Pending Approval', class: 'label label-warning')
    # end


    # accepts_nested_attributes_for :employer, allow_destroy: true

    # validates(:content, presence: true)
end