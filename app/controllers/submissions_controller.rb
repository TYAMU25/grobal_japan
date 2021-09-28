class SubmissionsController < ApplicationController
  def show
    @general_user = GeneralUser.find(current_general_user.id)
    @submission = Submission.find(params[:id])
    @commint = Commint.new
    @commints = Commint.where(submission_id: params[:id]).reverse
  end

  def index
    @submissions = Submission.all.order(created_at: 'DESC').page(params[:page]).per(10)
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
    @submissions = Submission.all
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.name = ''
    @submission.general_user_id = current_general_user.id
    @submission.score = Language.get_data(submission_params[:text])  #この行を追加
    @submission.save
    tags = []
    tags = Vision.get_image_data(@submission.image) if @submission.image.present? 
    tags.each do |tag|
      @submission.tags.create(name: tag)
    end
    redirect_to submissions_path
  end

  def destroy 
    submission = Submission.find(params[:id])
    submission.destroy if current_general_user.id == submission.general_user_id
    redirect_to submissions_path
  end

  private

  # ストロングパラメータ
  def submission_params
    params.require(:submission).permit(:title, :text, :name, :gender, :submissions_target, :image)
  end
end
