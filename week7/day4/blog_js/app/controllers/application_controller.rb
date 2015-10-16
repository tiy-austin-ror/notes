class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if user_logged_in?
  end

  def authenticate_user!
    unless user_logged_in?
      flash[:alert] = "You must be logged in to do that."
      redirect_to login_path
    end
  end

  private

  def user_logged_in?
    session[:user_id].present?
  end

end
