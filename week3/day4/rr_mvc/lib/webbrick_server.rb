include WEBrick
class WEBBrickServer < HTTPServlet::AbstractServlet

  def do_GET(raw_request, raw_response)    process(raw_request, raw_response); end
  def do_PUT(raw_request, raw_response)    process(raw_request, raw_response); end
  def do_POST(raw_request, raw_response)   process(raw_request, raw_response); end
  def do_DELETE(raw_request, raw_response) process(raw_request, raw_response); end

  def process(raw_request, raw_response)
    request = {}
    request.store(:method, raw_request.request_method)
    request.store(:route, raw_request.path)
    request.store(:paths, request.fetch(:route, '/').split('/').reject(&:empty?))
    request.store(:query, raw_request.query)

    if request[:paths].nil? || request[:paths].empty?
      request.store(:format, '')
    else
      request.store(:format, request[:paths][-1].split('.').last)
    end

    request.store(:raw_request, raw_request)
    request.store(:referer, raw_request["Referer"])
    request.store(:params, request[:query])

    if raw_request.body && raw_request.body.length > 1
      raw_request.body
        .gsub('+', ' ')
        .split('&')
        .map { |field| field.split("=") }
        .each do |field_name, field_value|
          request[:params].store(field_name.to_sym, URI.decode(field_value.to_s))
        end
    end

    return if request[:route] =~ /favicon/ # Do not process a favicon request

    response = AppRouter.new(request).route

    if response.nil? || (response[:status].upcase == "404 NOT FOUND")
      render_not_found(raw_response)
      return
    end

    if response[:status].upcase =~ /500/
      render_server_error(request, response, raw_response)
    end

    unless response.is_a?(Hash) && response[:body].respond_to?(:bytesize)
      render_server_error(request, response, raw_response)
      return
    end

    raw_response.status = response[:status]
    raw_response["Location"] = response[:location] if response[:location]
    raw_response.content_type = response[:as]
    raw_response.content_length = response[:body].to_s.bytesize
    raw_response.body = response[:body]
  end


  private

  def render_not_found(raw_response)
    puts "Could not find route or render was not called"
    res = <<-HTML
    <h1>404 Error</h1>
    <hr/>
    <h3>I could not find this page anywhere<h3>
    <iframe src='//giphy.com/embed/XrVLW6AQd1vtS' width="480" height="200" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="http://giphy.com/gifs/ninja-camouflage-XrVLW6AQd1vtS">via GIPHY</a></p>
    <ul>
      <li>Make sure your routes are set up correctly</li>
      <li>Remember that each controller action has to call render to return something</li>
    </ul>
    HTML
    raw_response.status = 404
    raw_response.content_type = 'text/html'
    raw_response.body = res
    raw_response.content_length = res.bytesize
  end

  def render_server_error(request, response, raw_response)
    puts "Error Occured"
    res = """
    <h1>500 Error</h1>
    <hr/>
    <h3>This means there was an error in your server code caused by one or more of the following:</h3>
    <iframe src='//giphy.com/embed/6uMqzcbWRhoT6' width='240' height='180' frameBorder='0' class='giphy-embed' allowFullScreen></iframe><p><a href='http://giphy.com/gifs/cat-animal-kitten-6uMqzcbWRhoT6'></a></p>
    <ul>
      <li><strong>Your response body could not be parsed. Remember it needs to be a string.</strong></li>
      <li>You are missing routes for #{request[:route].inspect}</li>
      <li>Your existing routes are not properly formed</li>
      <li>Your controller action is empty</li>
      <li>Your controller action is not calling render</li>
    </ul>
    """
    raw_response.status = 500
    raw_response.content_type = 'text/html'
    raw_response.body = res
    raw_response.content_length = res.bytesize
  end
end
