class GreatController < ApplicationController
  def create
    submission = Submission.find(params[:id])
    great = Great.new(general_user_id: current_general_user.id, submission_id: submission.id)
    great.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    submission = Submission.find(params[:id])
    great = current_general_user.greats.find_by(submission_id: submission.id)
    if great
      great.destroy
    end
    redirect_back(fallback_location: root_path)
  end
end
