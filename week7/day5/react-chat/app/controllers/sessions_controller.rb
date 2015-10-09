class SessionsController < ApplicationController
  skip_before_filter :authenticate_user #Don't make the user have to login before viewing the login page.

  def new #login page
  end

  def create #create the login session
    user = User.find_by_username(params[:username])
    if user.present? && user.authenticate(params[:password])
      set_user_session(user)
      redirect_to root_path, notice: "Successfully logged in!"
    else
      flash[:alert] = 'Username or Password did not match.'
      render :new
    end
  end

  def destroy #delete the login session
    session[:user_id] = nil
    redirect_to root_path, notice: "Successfully logged out."
  end

  private

  def set_user_session(user)# This is the method that makes the user 'logged in'
    session[:user_id] = user.id
  end
end
