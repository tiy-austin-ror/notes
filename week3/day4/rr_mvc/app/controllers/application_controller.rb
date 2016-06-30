class LayoutRenderer
end

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

  def redirect_to(location)
    render('', status: '303 See Other', as: 'text/html', location: location)
  end

  def render_template(location, opts = {})
    layout = ERB.new(File.read("app/views/layouts/application.html.erb"))
    layout.def_method(LayoutRenderer, 'render')

    template = ERB.new(File.read("app/views/" + location))

    result = LayoutRenderer.new.render do
      template.result(binding)
    end

    render(result, { as: "text/html" }.merge(opts))
  end

  def render_partial(location, opts = {})
    partial = ERB.new(File.read("app/views/#{location}"))
    partial.result(binding)
  end

  def render(body, opts = {})
    {
      body: body,
      status: opts.fetch(:status, "200 OK"),
      location: opts[:location],
      as: opts.fetch(:as, "application/json")
    }
  end
end
