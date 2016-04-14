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
      respond_to do |format|
        format.json do
          render json: { message: "Comment Created!" }
        end
        format.html do
          redirect_to @post
        end
      end
    else
      respond_to do |format|
        format.json do
          render json: { message: "Comment could not be created" } 
        end
        format.html do
          render :new
        end
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
