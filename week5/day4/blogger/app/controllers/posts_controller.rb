class PostsController < ApplicationController
  def index
    render template: 'posts/index.html.erb', locals: {
      posts: Post.all,
      title: "All Posts"
    }
  end

  def show
    if Post.exists?(params[:id])
      post = Post.find(params[:id])
      render template: 'posts/show.html.erb', locals: {
        post: post,
        title: post.title,
        comment: Comment.new
      }
    else
      render html: "Not Found", status: 404
    end
  end

  def new
    render locals: {
      post: Post.new
    }
  end

  def create
    post = Post.new
    post.title = params[:post][:title]
    post.body  = params[:post][:body]
    if post.save
      redirect_to post_path(post)
    else
      flash[:alert] = "Could not be saved due to errors."
      render template: '/posts/new.html.erb', locals: {
        post: post
      }
    end
  end

  def edit
    render locals: {
      post: Post.find(params[:id])
    }
  end

  def update
    post = Post.find(params[:id])
    post.title = params[:post][:title] if params[:post][:title].present?
    post.body  = params[:post][:body]  if params[:post][:body].present?
    if post.save
      redirect_to post_path(post)
    else
      render template: '/posts/new.html.erb', locals: {
        post: post
      }
    end
  end

end
