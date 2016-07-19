class UsersController < ApplicationController
  def index
    render locals: {
      users: User.all
    }
  end

  def show
    render locals: {
      user: User.find(params[:id])
    }
  end
end
