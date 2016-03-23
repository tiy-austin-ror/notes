class Parser
  def parse_params(uri_fragments, query_param_string)
    params = {}
    params[:resource]  = uri_fragments[0]
    params[:id]        = uri_fragments[1]
    params[:action]    = uri_fragments[2]
    if query_param_string
      param_pairs = query_param_string.split('&')
      param_k_v   = param_pairs.map { |param_pair| param_pair.split('=') }
      param_k_v.each do |k, v|
        params.store(k.to_sym, v)
      end
    end
    params
  end

  # You shouldn't need to touch anything in these methods.
  def parse(raw_request)
    pieces = raw_request.split(' ')
    method = pieces[0]
    uri    = pieces[1]
    http_v = pieces[2]
    route_format, query_param_string = uri.split('?')
    route,  format = route_format.split('.')
    if route == "/"
      return {
        method: method,
        uri: uri,
        http_version: http_v,
        route: route,
        format: format || 'html',
        params: parse_params(route, query_param_string)
      }
    else
      uri_fragments = route.split('/')
      params = parse_params(uri_fragments.drop(1), query_param_string)
      return {
        method: method,
        uri: uri,
        http_version: http_v,
        route: route,
        format: format,
        params: params
      }
    end
  end

  def parse_request_body(request_body)
    # Turns a request body that looks like this:
    # ["F0HB1028pcMB5yEn\r\nContent-Disposition: form-data; name=\"first_name\"\r\n\r\njustin\r\n"]
    # Into this
    # [ ["first_name", "justin"] ]
    request_body.map do |piece|
      piece
        .split(';')
        .last.gsub(/ name="(.+)"/, '\1')
        .split("\r\n\r\n")
        .map do |attrs|
          attrs.gsub("\r\n", '')
        end
    end
  end
end
