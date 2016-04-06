class WelcomeController < ApplicationController
  def index
    @popular_posts = Post.all.sort_by { |post| post.comments.count }.reverse.take(3)
    @categories = Post.distinct.pluck(:category)
  end

  def category
    @posts = Post.where(category: params[:name])
  end

  def about
  end
end


