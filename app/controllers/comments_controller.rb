class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    binding.pry
    @comment = Comment.new(comment_params)
    @comment.save!
    redirect_to root_path
  end

  private
  def comment_params
    begin
      params.require(:comment).permit(:comment, :post_id, :user_id)
    rescue
      p e
      p e.backtrace
    end
  end


end
