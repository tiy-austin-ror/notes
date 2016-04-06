class CommentsController < ApplicationController
  skip_before_action :authenticate_user
  
  def new
    @post = Post.find(params.fetch(:post_id))
    @comment = @post.comments.build
  end

  def create
    @post = Post.find(params.fetch(:post_id))
    @comment = @post.comments.build(comment_params)

    if @comment.save
      flash[:notice] = "comment created"
      redirect_to @post
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
