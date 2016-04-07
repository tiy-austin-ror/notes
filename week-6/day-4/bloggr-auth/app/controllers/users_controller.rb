class UsersController < ApplicationController
  skip_before_action :authenticate_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Succesfully created an account and signed in!"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end
end
