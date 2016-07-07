class PostsController < ApplicationController
  def index
   all_posts = Post.all

   render json: all_posts.to_json, status: 200
  end


  def show
    if Post.exists?(params[:id])
      post = Post.find(params[:id])

      render json: post.to_json, status: 200
    else
      render json: { message: "Post not found" }, status: 404
    end
  end
end
