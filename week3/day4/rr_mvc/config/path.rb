class Path
  attr_reader :http_method, :url_path, :resource, :resource_controller, :action

  def initialize(http_method, url_path, resource_controller, action)
    @http_method = http_method
    @url_path = url_path
    @resource_controller = resource_controller
    @resource = resource_controller
    @action = action
  end

  def valid?(request)
    http_method == request[:method] && route_match?(request[:route])
  end

  def execute(request)
    request[:params].merge!(assign_params(request))
    request[:params].merge!({
      controller_name: resource_controller.to_s,
      action_name: action
    })

    send_to_controller(request)
  end

  def to_s
    "#@url_path => #@resource:#@action"
  end

  private

  def assign_params(request)
    Hash[@url_path[1..-1]
      .split('/')
      .zip(request[:paths])
      .select { |key, value| key[0] == ":" }
      .map { |key, value| [key[1..-1].to_sym, value] }]
  end

  def send_to_controller(request)
    @resource.new(request).send(@action)
  end

  def route_match?(route)
    route =~ Regexp.new("^#{replace_dynamic_segments(@url_path)}$")
  end

  def replace_dynamic_segments(str, depth = 0)
    return str if depth > 10
    return str unless str.include?(':')
    dynamic_segment_re = /
      (?:
         (?:
          :.+\/([^:]+)
         )
         |
         (?:
           :.+(.+)$
         )
         |
         (?:
          :.+
         )
      )
    /xi
    updated_str = str.gsub(dynamic_segment_re) do
      first_match = Regexp.last_match[1]
      if first_match.nil?
        "(.+)"
      else
        "(.+)/#{first_match}"
      end
    end
    replace_dynamic_segments(updated_str, depth += 1)
  end
end

class NullPath
  def valid?(_)
    true
  end

  def execute(_)
    { body: '', status: "404 NOT FOUND" }
  end
end


