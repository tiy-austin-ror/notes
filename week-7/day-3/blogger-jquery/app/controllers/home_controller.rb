class HomeController < ApplicationController
  skip_before_action :authenticate_user
  
  def dashboard
    @posts = Post.all
  end
end
