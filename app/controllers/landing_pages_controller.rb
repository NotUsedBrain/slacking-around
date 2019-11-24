class LandingPagesController < ApplicationController
  skip_before_action :check_user


  def index
    @job_postings = JobPosting.all
  end
end
