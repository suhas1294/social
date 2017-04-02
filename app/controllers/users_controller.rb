class UsersController < ApplicationController

  # before_action :authenticate_user!

  def index

  end

  def show
    @target_user = User.find(params[:id])
  end
end
