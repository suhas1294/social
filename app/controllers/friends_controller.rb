class FriendsController < ApplicationController

  def index

  end

  def create_friendship
    @target_user = User.find(params[:user_id])
    current_user.friend_request(@target_user)
    redirect_to root_path
  end

  def accept_friend_request
    @requested_user = User.find(params[:id].to_i)
    current_user.accept_request(@requested_user)
    redirect_to root_path
  end

  def reject_friend_request
    @requested_user = User.find(params[:id].to_i)
    current_user.decline_request(@requested_user)
    redirect_to root_path
  end

  def block_friend_request
    @requested_user = User.find(params[:id].to_i)
    current_user.block_friend(@requested_user)
    redirect_to root_path
  end

  def show_all_friends
    current_user.friends
  end
end
