class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = get_post
    @comments = @post.comments
  end

  def edit
    @post = get_post
  end

  def update
    @post = get_post

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def publish
    @post = get_post
    @post.published = true
    @post.save!

    flash[:notice] = "Published the post!"
    redirect_to :back
  end

  def destroy
    @post = get_post

    if @post.destroy
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def get_post
    Post.find(params.fetch(:id))
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
