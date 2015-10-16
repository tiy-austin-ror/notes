class WelcomeController < ApplicationController
  def about
    render json: { message: "We are the premier student tracking site!" }.to_json, status: 200
  end
end
