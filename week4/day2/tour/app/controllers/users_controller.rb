class UsersController < ApplicationController

  def index
    time = Time.now
    user = User.first
    if user.nil?
      render text: 'no first user', status: 404
    else
      render text: """Hello World,
        thank you for visiting at #{time},
        the first user in my database is #{user.full_name}""", status: 200
    end
  end

  def show
    begin
      user = User.find(params[:id])
      render text: "params: #{params.inspect} user: #{user.full_name}", status: 200
    rescue ActiveRecord::RecordNotFound
      render text: "Sorry, user with id of #{params[:id]} was not found", status: 404
    end
  end
end
