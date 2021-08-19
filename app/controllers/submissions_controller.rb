class SubmissionsController < ApplicationController
  def show
    @submission = Submission.find(params[:id])
    @commint = Commint.new
  end

  def index
    @submissions = Submission.all
    @submission = current_general_user
  end
  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    @submission.update(submission_params)
    redirect_to submissions_path
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.name = ""
    @submission.general_user_id = current_general_user.id
    @submission.save
    redirect_to submissions_path
  end

  def destroy
  end

  private
  # ストロングパラメータ
  def submission_params
    params.require(:submission).permit(:title, :text, :name, :gender, :submissions_target)
  end

end
