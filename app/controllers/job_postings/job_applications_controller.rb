module JobPostings
  class JobApplicationsController < ApplicationController
    before_action :set_job_posting
    before_action :set_job_application, except: [:create]
    before_action :check_user

    def create
      @job_application = @job_posting.job_applications.new(employee: current_employee, status: 2)
      if already_applied?
        redirect_to root_path, alert: "You can't apply more than once"
      else 
        @job_application.save
        redirect_to root_path, notice: 'Job Application was successful.'
      end
    end

    def show
      @job_posting = JobPosting.find(params[:job_posting_id])
      @job_application = JobApplication.find(params[:id])
    end

    def index
      @job_application.order
    end

    private

    def job_applications_params
      params.permit(:status, :id, :job_posting_id, :employee_id, :employer_id)
    end  

    def set_job_posting
      @job_posting = JobPosting.find(params[:job_posting_id])
    end

    def set_job_application
      @job_application = JobApplication.find(params[:id])
    end

    def already_applied?
      JobApplication.where(employee_id: current_employee.id, job_posting_id:
      params[:job_posting_id]).exists?
    end

    def order
      JobApplication.where(created_at: 1.month.ago.to_date..Date.current)
    end

  end
end