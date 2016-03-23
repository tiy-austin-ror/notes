class Router
  def initialize(request)
    @request = request
  end

  def route
    # Routes are parsed from top down, so make sure they follow this style
    # /resource/:id/action
    # /resouce/:id
    # /resource
    # If you don't use that order, it will be like the if statements in fizzbuzz
    # syntax:
    # get(<route_string>, <controller_name_constant>, <action_name_symbol)
    # put('/tweets/:id/edit', TweetsController, :edit)
    #This route would be for putting an update for the tweet where :id is the number in the URL
    #
    # Put your routes in this array using the get, post, put, delete methods below. (remember order matters)
    [
      delete('/users/:id', UsersController, :destroy),
      put('/users/:id', UsersController, :update),
      get('/users/new', UsersController, :new),
      get('/users/:id', UsersController, :show),
      get('/users', UsersController, :index),
      post('/users', UsersController, :create)
    ].find(&:itself)
  end

  private # No need to edit these, but feel free to read them to see how they work

  def get(url_str, resource, action)
    send_to_controller(resource, action) if get? && route_match?(url_str)
  end

  def post(url_str, resource, action)
    send_to_controller(resource, action) if post? && route_match?(url_str)
  end

  def put(url_str, resource, action)
    send_to_controller(resource, action) if put? && route_match?(url_str)
  end

  def delete(url_str, resource, action)
    send_to_controller(resource, action) if delete? && route_match?(url_str)
  end

  def get?
    @request[:method] == "GET"
  end

  def put?
    @request[:method] == "PUT"
  end

  def post?
    @request[:method] == "POST"
  end

  def delete?
    @request[:method] == "DELETE"
  end

  def send_to_controller(resource, action)
    @request[:params].merge!({
      controller_name: resource.to_s,
      action_name: action
    })
    resource.new(@request).send(action)
  end

  def route_match?(url)
    @request[:route] =~ Regexp.new("^#{url.gsub(/:.+?[\w(\/.+)]/, '(.+)\1')}$")
  end
end
