require 'erb'
class UsersController < ApplicationController
  def index #GET
    if request[:format] == "json"
      render App.users.to_json, status: "200 OK"
    else
      @users = App.users
      render_template 'users/index.html.erb'
    end
  end

  def show #GET
    user = find_user_by_id

    if user
      if request[:format] == "json"
        render user.to_json
      else
        @user = user
        render_template 'users/show.html.erb'
      end
    else
      render_not_found
    end
  end

  # new

  def new
    render_template 'users/new.html.erb'
  end

  def create #POST
    last_user = App.users.max_by { |user| user.id }
    new_id = last_user.id + 1

    App.users.push(
      User.new(new_id, params["name"], params["age"])
    )
    puts App.users.to_json

    render({ message: "Successfully created!", id: new_id }.to_json)
  end

  # edit

  def update #PUT
    user = find_user_by_id

    if user
      unless params["name"].nil? || params["name"].empty?
        user.name = params["name"]
      end

      unless params["age"].nil? || params["age"].empty?
        user.age = params["age"]
      end

      # In rails you will need to call save here
      render user.to_json, status: "200 OK"
    else
      render_not_found
    end
  end

  def destroy #DELETE
    user = find_user_by_id

    if user
      App.users.delete(user) # destroy it 🔥
      render({ message: "Successfully Deleted User" }.to_json)
    else
      render_not_found
    end
  end

  private

  def find_user_by_id
    App.users.find { |u| u.id == params[:id].to_i }
  end

  def render_not_found
    return_message = {
      message: "User not found!",
      status: '404'
    }.to_json

    render return_message, status: "404 NOT FOUND"
  end

end
