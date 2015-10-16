## Ruby HTTP/1.1 Request Parser (Incomplete)
##
## - Handles all _VALID_ http request URLS
## - Requires a HTTP VERB, URL, and HTTP VERSION
##
##  - INPUT: "GET http://localhost:3000/todos/1 HTTP/1.1"
##  - OUTPUT: {
#   protocol: 'http',
#   domain: 'localhost',
#   port: '3000',
#   subdomain: '',
#   resource: 'todos',
#   id: '1'
#   request_method: 'GET'
#   http_version: "1.1"
# }

class Parser
  def initialize(request_string)
    @request_string = request_string  # => "GET http://localhost:3000/todos/1 HTTP/1.1"
  end

  def request
    request_method, requested_url, http = @request_string.split(' ')  # => ["GET", "http://localhost:3000/todos/1", "HTTP/1.1"]

    uri_fragments = requested_url.split('/')     # => ["http:", "", "localhost:3000", "todos", "1"]
    protocol      = uri_fragments[0][0..-2]      # => "http"
    domain, port  = uri_fragments[2].split(':')  # => ["localhost", "3000"]
    resource      = uri_fragments[3]             # => "todos"
    resource_id   = uri_fragments[4]             # => "1"
    http_version  = http.split('/').last         # => "1.1"
    {
      protocol: protocol,                        # => "http"
      domain: domain,                            # => "localhost"
      port: port,                                # => "3000"
      resource: resource,                        # => "todos"
      id: resource_id,                           # => "1"
      http_version: http_version,                # => "1.1"
      request_method: request_method,            # => "GET"
      subdomain: ''                              # => ""
    }                                            # => {:protocol=>"http", :domain=>"localhost", :port=>"3000", :resource=>"todos", :id=>"1", :http_version=>"1.1", :request_method=>"GET", :subdomain=>""}
  end
end

todos = [
  {task: 'eat', completed: false},       # => {:task=>"eat", :completed=>false}
  {task: 'drink', completed: false},     # => {:task=>"drink", :completed=>false}
  {task: 'be merry', completed: false},  # => {:task=>"be merry", :completed=>false}
  {task: 'die', completed: false}       # => {:task=>"die", :completed=>false}
]                                        # => [{:task=>"eat", :completed=>false}, {:task=>"drink", :completed=>false}, {:task=>"be merry", :completed=>false}, {:task=>"die", :completed=>false}]

parser = Parser.new("GET http://localhost:3000/todos/1 HTTP/1.1")  # => #<Parser:0x007fa687943c90 @request_string="GET http://localhost:3000/todos/1 HTTP/1.1">

request = parser.request  # => {:protocol=>"http", :domain=>"localhost", :port=>"3000", :resource=>"todos", :id=>"1", :http_version=>"1.1", :request_method=>"GET", :subdomain=>""}

if request[:resource] == 'todos'  # => true
  puts todos[request[:id].to_i]   # => nil
end                               # => nil

# >> {:task=>"drink", :completed=>false}






