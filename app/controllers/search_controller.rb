class SearchController < ApplicationController
  def index
    @general_users = @q.result(distinct: true).page(params[:page]).per(10)
    #@submissions = Submission.all.page(params[:page]).per(10)
    #@submissions = current_general_user
  end
end
