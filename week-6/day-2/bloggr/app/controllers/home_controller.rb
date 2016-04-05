class HomeController < ApplicationController
  def dashboard
    @posts = Post.all
  end
end
