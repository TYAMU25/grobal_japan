class RelationshipsController < ApplicationController
  def create
    current_general_user.follow(params[:general_user_id])
    redirect_to request.referer
  end

  def destroy
    current_general_user.unfollow(params[:general_user_id])
    redirect_to request.referer
  end

  def followings
    current_general_user = GeneralUser.find(params[:general_user_id])
    byebug
    @general_users = user.followings
  end

  def followers
    current_general_user = GeneralUser.find(params[:general_user_id])
    @general_users = user.followers
  end
end
