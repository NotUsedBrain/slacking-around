class CommentsController < ApplicationController

  def create
    @employee_profile = Employee_Profile.find(params[employee_profile_id])
    @comment = @employee_profile.comments.build(comment_params)
    @comment.employer_id = current_employer.id
    if @comment.save
      redirect_to @Employee_Profile
    else
      redirect_to @Employee_Profile, notice: "Could not save your feedback! HAHA"
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
  
end
