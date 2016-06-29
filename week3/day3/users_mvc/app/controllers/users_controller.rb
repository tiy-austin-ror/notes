class UsersController
  def index(format)
    all_users = Users::ALL

    if format == "json"
      UsersIndexJson.new.render(all_users)
    else
      UsersIndex.new.render(all_users)
    end
  end

  def show(id, format)
    user = Users::ALL[id.to_i - 1]

    if format == "json"
      UsersShowJson.new.render(user)
    else
      UsersShow.new.render(user)
    end
  end
end
