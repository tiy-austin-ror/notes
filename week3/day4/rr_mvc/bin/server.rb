require 'webrick'
require 'socket'
require 'timeout'
require 'uri'
require 'erb'
require 'json'
require 'pry'
require 'faker'
require_relative '../config/path'
require_relative '../config/router'
require_relative '../config/app_router'
require_relative '../app/controllers/application_controller'
require_relative '../lib/all'

module App
  # Place all data here inside of a method
  def App.tweets
    # This is an example of memoization in ruby
    @all_tweets ||= [
      { message: "cool tweet!", id: 1},
      { message: "badd tweet!", id: 2},
      { message: "ohno tweet!", id: 3},
      { message: "eehhh tweet", id: 4},
    ]
  end

  def App.users
    @all_users ||= [
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
      User.new(Faker::Name.name, rand(18..80), Faker::Address.zip),
    ]
  end
end

# To make sure our tweets and users are always created first, just call
# these methods one time as the server starts and throw away the reference.
App.tweets
App.users

system('clear')

def start_custom_webbrick_server
  server = WEBrick::HTTPServer.new(Port: 3001)
  server.mount "/", WEBBrickServer

  trap(:INT)  { server.shutdown }
  trap(:TERM) { server.shutdown }

  puts "The server is running and awaiting requests at http://localhost:3001/"
  server.start
end

def start_custom_tcp_server
  CustomTCPServer.new.start
end


if ARGV[0] == '--no-webrick'
  start_custom_tcp_server
else
  start_custom_webbrick_server
end
