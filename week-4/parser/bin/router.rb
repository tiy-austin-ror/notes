require_relative '../lib/parser.rb'

class Router
  def initialize
  end

  def start
    loop do
      print "Type valid HTTP request here > "
      request_url = gets.chomp

      request = Parser.new(request_url).request

      puts request.inspect
    end
  end
end

Router.new.start
