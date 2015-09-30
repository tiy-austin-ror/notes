class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      flash[:alert] = 'Errors'
      render :back
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:username, :body, :post_id)
  end
end
