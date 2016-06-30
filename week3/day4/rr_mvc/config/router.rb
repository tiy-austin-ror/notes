class Router
  def initialize(request)
    @request = request
  end

  def routes
    raise "You need to override this method by adding an array of get,post,put,delete routes."
  end

  def route
    [
      routes, # All the routes defined in "AppRouter"

      get('/assets/:type/:name', AssetsController, :handle), # The Assets route to make sure our css can be loaded

      NullPath.new # A "null path" that always matches and always returns a 404 error

    ].flatten # Flatten any sub arrays that are found
     .compact # Remove any nil elements from the array
     .find { |path| path.valid?(@request) } # Check each route to see if they match the current path
     .execute(@request) # Send the request to the controller
  end

  protected # No need to edit these, but feel free to read them to see how they work

  def root(controller, action)
    [
      get('/', controller, action)
    ]
  end

  def api_resource(name, controller)
    [
      post("/#{name}",       controller, :create),
      delete("/#{name}/:id", controller, :destroy),
      put("/#{name}/:id",    controller, :update),
      get("/#{name}/:id",    controller, :show),
      get("/#{name}",        controller, :index),
    ]
  end

  def resource(name, controller)
    [
      post("/#{name}",            controller, :create),
      post("/#{name}/:id/delete", controller, :destroy), #will be DELETE in rails
      post("/#{name}/:id",        controller, :update), #will be PUT in Rails

      get("/#{name}/:id/edit",    controller, :edit),
      get("/#{name}/new",         controller, :new),
      get("/#{name}/:id",         controller, :show),
      get("/#{name}",             controller, :index),
    ]
  end

  def get(url_str, resource, action)
    Path.new("GET", url_str, resource, action)
  end

  def post(url_str, resource, action)
    Path.new("POST", url_str, resource, action)
  end

  def put(url_str, resource, action)
    Path.new("PUT", url_str, resource, action)
  end

  def delete(url_str, resource, action)
    Path.new("DELETE", url_str, resource, action)
  end
end

