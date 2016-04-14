class PostsController < ApplicationController
  skip_before_action :authenticate_user, only: [:show]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user #Assign the user that the post belongs_to to the current user

    if @post.save
      flash[:notice] = "Created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = get_post
    @comments = @post.comments
    @comment = Comment.new
  end

  def edit
    @post = get_post
  end

  def update
    @post = get_post

    if @post.update(post_params)
      flash[:notice] = "Updated post"
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
