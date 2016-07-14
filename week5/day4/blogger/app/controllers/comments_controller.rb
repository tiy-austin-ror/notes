class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.post_id = params[:comment][:post_id]
    comment.body = params[:comment][:body]
    if comment.save
      flash[:notice] = "Comment created!"
    else
      flash[:alert] = "Comment could not be created"
    end
    redirect_to :back
  end
end
