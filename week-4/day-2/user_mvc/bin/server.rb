require_relative '../app/views/users/index.json'
require_relative '../app/controllers/users_controller'
require_relative '../app/models/user'
require_relative '../config/routes'

class UrlObject
  attr_accessor :resource, :action, :http_verb
  def initialize(res, act, ver)
    @resource = res
    @action = act
    @http_verb = ver
  end
end

class Server
  def initialize
  end

  def serve
    puts Router.route(UrlObject.new(:users, :index, :GET))
  end

  def serve_index
    puts Router.route(UrlObject.new(:users, :index, :GET))
  end
end

Server.new.serve
