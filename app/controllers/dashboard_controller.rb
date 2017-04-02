class DashboardController < ApplicationController
  def index
    @user = current_user
  end

  def my_posts
    @posts = current_user.posts
  end
end
