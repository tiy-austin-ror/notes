class UsersController < ApplicationController
  def index
    render User.all.to_json, status: "200 OK"
  end

  def show
    user = User.find(params[:id])
    if user
      render(user.to_json, status: "200 OK")
    else
      render({ message: "User not found" }, status: "404 NOT FOUND")
    end
  end

  def create
    # Grab the pieces of a new user from the params hash
    # Add that newly created user object to the list of all users
    # redirect to the show page for that new user
    user = User.new(params["name"], params["age"], params["zipcode"])

    User.all.push(user)

    redirect_to "/users/#{user.id}"
  end

  def update
    user = User.find(params[:id])
    if user
      user.name    = params["name"] if params["name"]
      user.age     = params["age"]  if params["age"]
      user.zipcode = params["zipcode"] if params["zipcode"]

      redirect_to "/users/#{user.id}"
    else
      render({ message: "User not found" }, status: "404 NOT FOUND")
    end
  end

  def destroy
    user = User.find(params[:id])
    if user
      User.all.delete(user)
      redirect_to "/users"
    else
      render({ message: "User not found" }, status: "404 NOT FOUND")
    end
  end
end
