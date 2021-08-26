class CommintsController < ApplicationController
  def create
    @comment = Commint.new(comment_params)
    @comment.general_user_id = current_general_user.id
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:commint).permit(:comment, :submission_id)
  end
end
