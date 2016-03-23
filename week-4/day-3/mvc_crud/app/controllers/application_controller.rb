class ApplicationController
  # This default ApplicationController is here to give you some helper methods
  # This means if your controller inherits from ApplicationController (which they should)
  # You will always have access to the request and params methods
  def initialize(request)
    @request = request
  end

  def request
    @request
  end

  def params
    @request[:params]
  end

  def render_template(location, opts = {})
    template = ERB.new(File.read("app/views/" + location))
    render(template.result(binding), opts.merge({ as: "text/html" }))
  end

  def render(body, opts = {})
    {
      body: body,
      status: opts.fetch(:status, "200 OK"),
      as: opts.fetch(:as, "application/json")
    }
  end
end
