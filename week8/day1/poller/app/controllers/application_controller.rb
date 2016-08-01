class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method def current_user
    User.first
  end
end
