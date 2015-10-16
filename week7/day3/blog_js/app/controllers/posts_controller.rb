class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    authenticate_user!
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    authenticate_user!
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "New Post successfully created"
    else
      flash[:alert] = "Error Occured"
      render :new
    end
  end

  def edit
    authenticate_user!
    @post = Post.find(params[:id])
  end

  def update
    authenticate_user!
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post, notice: 'Post successfully updated'
    else
      flash[:alert] = "An error occured"
      render :edit
    end
  end

  def destroy
    authenticate_user!
    Post.destroy(params[:id])
    redirect_to posts_path, notice: 'destroyed'
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end
end
