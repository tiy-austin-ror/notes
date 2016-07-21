class UsersController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate_via_token

  def index
    if params[:limit]
      render json: User.limit(params[:limit])
    else
      render json: User.all
    end
  end


  protected

  def authenticate_via_token
    authenticate_or_request_with_http_token do |token, _|
      User.find_by(auth_token: token)
    end
  end
end
