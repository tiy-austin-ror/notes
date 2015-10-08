class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      respond_to do |f|
        f.html do
          redirect_to :back
        end
        f.json do
          render json: @comment.to_json
        end
      end
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
