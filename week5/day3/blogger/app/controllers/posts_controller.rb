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
        title: post.title
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
    post.title = params[:title]
    post.body  = params[:body]
    if post.save
      redirect_to "/posts/#{post.id}"
    else
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
    post.title = params[:title] if params[:title].present?
    post.body  = params[:body]  if params[:body].present?
    if post.save
      redirect_to "/posts/#{post.id}"
    else
      render template: '/posts/new.html.erb', locals: {
        post: post
      }
    end
  end

end
