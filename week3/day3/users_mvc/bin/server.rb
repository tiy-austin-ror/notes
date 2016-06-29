require 'json'

require_relative '../app/models/user'
# If I don't have my user, I cannot create an array of users
require_relative '../config/users'
require_relative '../app/controllers/users_controller'
require_relative '../app/views/users_index'
require_relative '../app/views/users_index_json'
require_relative '../app/views/users_show'
require_relative '../app/views/users_show_json'

class Router
  def initialize(request)
    @request = request
  end

  def route
    if @request[:resource] == "users"
      if @request[:id] && @request[:id].length > 0
        UsersController.new.show(@request[:id], @request[:format])
      else
        if @request[:action].nil? || @request[:action] == ""
          UsersController.new.index(@request[:format])
        end
      end
    end
  end
end

request = {
  resource: "users",
  # id: "3",
  # format: "json"
}

Router.new(request).route
