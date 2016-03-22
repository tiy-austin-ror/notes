class UsersController

  #This method will be referred to as "an action"
  def index
    user = User.new("justin", "herrick", 0) # Talking to our model

    response = UserIndex.render(user) # Getting our view
    return response # Returning out view
  end

  def show
    user = User.new("jane", "doe", 1)

    return UserIndex.render(user)
  end

end
