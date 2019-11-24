class JobPostingsController < ApplicationController
  before_action :find_job_posting, only: [:show, :edit, :update, :destroy]
  
  def index
    @job_postings = if current_employer
                      current_employer.job_postings
                    elsif current_employee
                      JobPosting.all
                    end
  end

  def new
    @job_posting = JobPosting.new
  end

  def create
    @job_posting = JobPosting.new(job_postings_params)
    
    if @job_posting.save
      redirect_to @job_posting
    else
      render :new
    end
  end

  def show
  end


  def update
    if @job_posting.update(job_postings_params)
      redirect_to @job_posting
    else
      render :edit
    end
  end

  def destroy
    @job_posting.destroy
    redirect_to root_path
  end

  private
  
  def job_postings_params
    params.require(:job_posting).permit(
      :title, :content, :start_time, :end_time, :hourly_rate, :profession_id
    ).merge(employer_id: current_employer.id)
  end

  def find_job_posting
    @job_posting = JobPosting.find(params[:id])
  end

end