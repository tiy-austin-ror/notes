class HomeController < ApplicationController
  skip_before_action :authenticate_user

  def dashboard
    @recent_posts = Post.limit(5).order(created_at: :DESC)
    @top_users = User.select("users.*, SUM(posts.id) as max_posts").joins(:posts)
                     .group("users.id")
                     .order("max_posts DESC")
                     .limit(5)
  end
end
