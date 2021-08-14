class SubmissionsController < ApplicationController
  def show
    @submission = Submission.new
    @submissions = Submission.all
    #@submission = Submission.find(params[:id])

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
  end

  def destroy
  end
end
