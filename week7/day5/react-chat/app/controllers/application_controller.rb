class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user

  def authenticate_user
    unless user_logged_in?
      redirect_to new_login_path
    end
  end

  def current_user
    if user_logged_in?
      User.find(session[:user_id])
    end
  end
  helper_method :current_user

  def user_logged_in?
    session[:user_id].present?
  end
  helper_method :user_logged_in?

end
