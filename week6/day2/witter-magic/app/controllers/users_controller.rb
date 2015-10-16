class UsersController < ApplicationController
  def index
    users = User.all
    render template: 'users/index.html.erb', locals: { users: users }
  end

  def show
    user = User.find(params[:id])
    render template: 'users/show.html.erb', locals: { user: user }
  end
end
