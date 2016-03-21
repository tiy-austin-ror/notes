require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/parser.rb'

class ParserTest < Minitest::Test
  def test_works
    assert_equal(1, 1)
  end

  def test_parses_basic_url
    expectation = {
      protocol: "http",
      subdomain: "www",
      host: "www.google.com",
      domain_name: "google",
      tld: "com"
    }
    actual = Parser.new("http://www.google.com/").request
    assert_equal(expectation, actual)
  end

  def test_parses_basic_url_no_subdomain
    expectation = {
      protocol: "http",
      host: "google.com",
      domain_name: "google",
      tld: "com"
    }
    actual = Parser.new("http://google.com/").request
    assert_equal(expectation, actual)
  end



  def test_parses_url_with_resource_info
    expectation = {
      protocol: "http",
      subdomain: "www",
      host: "www.my-cool-app.com",
      domain_name: "my-cool-app",
      tld: "com",
      resource: "users",
      id: "2"
    }
    actual = Parser.new("http://www.my-cool-app.com/users/2").request
    assert_equal(expectation, actual)
  end
end
