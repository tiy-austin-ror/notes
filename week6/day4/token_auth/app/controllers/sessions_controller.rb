class SessionsController < ApplicationController
  def authenticate
    user = User.find_by(email: params.fetch(:email))
    if user.present? && user.authenticate(params.fetch(:password))
      render json: { auth_token: user.auth_token }
    else
      render json: { message: "Email or Password were incorrect." }, status: 401
    end
  end
end
