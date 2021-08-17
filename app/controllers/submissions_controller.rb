class SubmissionsController < ApplicationController
  def show
    @submission = Submission.new
    @submissions = Submission.all
    #@submission = Submission.find(params[:id])
  end

  def index
    @submissions = Submission.all
    @submission = current_customer
  end
  def edit
    #@submission = Submission.find(params[:id])
  end

  def update
    @submission = Submissions.find(params[:id])
    @submission.update(submission_params)
    redirect_to submission_path(list.id)
  end

  def new
    @submission = Submission.new
  end

  def create
    #submission = Submission.new(submission_params)
    #submission.save
    #redirect_to '/top'
  end

  def destroy
  end

  private
  # ストロングパラメータ
  def submission_params
    params.require(:submission).permit(:title, :body)
  end

end
