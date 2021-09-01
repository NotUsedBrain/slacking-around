class JobApplicationsController < ApplicationController
  before_action :find_job_application, only: %i[show create edit update destroy accept reject]
  before_action :check_user

  def index
    @job_application = JobApplication.all
  end

  def show
    @job_application = JobApplication.find(params[:id]).order("updated_at desc")  
    @job_posting = JobPosting.all
  end

  def update
    @job_application = JobApplication.find(params[:id])
    @job_application.undiscard
      redirect_to job_applications_path, notice: 'Job Application Undiscarded'
    if @job_application.update_attributes(job_applications_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def accept
    @job_application.update_attributes(status: 0)
    redirect_to root_path, notice: "Application Approved"
  end

  def reject
    @job_application.update_attributes(status: 1)
    redirect_to root_path, notice: "Application Rejected"
  end

  def destroy
    @job_application = JobApplication.find(params[:id])
    @job_application.discard
    redirect_to root_path, notice: 'Job Application Discarded'
  end

  def undiscard
    @job_application = JobApplication.find(params[:id])
    @job_application.undiscard
    redirect_to root_path, notice: 'Job Application Undiscarded'
  end

  private

  def job_applications_params
    params.permit(:status, :job_posting_id, :employee_id, :employer_id)
  end

  def find_job_application
    @job_application = JobApplication.find(params[:id] || params[:job_application_id])
  end

  def order
    JobApplication.where(created_at: 1.month.ago.to_date..Date.current).order("updated_at desc")
  end

end
