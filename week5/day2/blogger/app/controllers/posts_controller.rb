class PostsController < ApplicationController
  def index
    render template: 'posts/index.html.erb', locals: {
      posts: Post.all
    }
  end

  def show
    if Post.exists?(params[:id])
      render template: 'posts/show.html.erb', locals: {
        post: Post.find(params[:id])
      }
    else
      render html: "Not Found", status: 404
    end
  end
end
