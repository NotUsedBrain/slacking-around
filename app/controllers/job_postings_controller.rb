class JobPostingsController < ApplicationController
  def index
    @job_posting = JobPosting.new
  end

  def show
  end

  def new
    @job_posting = JobPosting.new
  end

  def create
    @job_posting = JobPosting.new(job_posting_params.merge(employer_id: current_employer.id))
    if @job_posting.save
      redirect_to root_path
    else
      render :index
    end
  end

  def view
    @job_posting = JobPosting.find(params[:id])
  end

  def update
    @job_posting = JobPosting.find(params[:id])
    if @job_posting.update_attributes(job_posting_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  
  def job_posting_params
    params.require(:job_posting).permit(:content, :start_time, :end_time, :hourly_rate)
  end
end
