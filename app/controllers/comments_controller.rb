class CommentsController < ApplicationController

  def create
    @employee_profile = EmployeeProfile.find(params[:employee_profile_id])
    @comment = @employee_profile.comments.build(comment_params)
    if @comment.save
      redirect_to @employee_profile
    else
      redirect_to @employee_profile, notice: "Could not save your feedback! HAHA"
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
  
end
