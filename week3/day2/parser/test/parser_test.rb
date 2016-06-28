require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/parser'

# Intended Parser Functionality
#
# p = Parser.new
# p.parse("http://www.google.com/user/1/edit?sort=ASC&limit=10")
#  => {
#   protocol: 'http',
#   subdomain: 'www',
#   domain_name: 'google',
#   tld: 'com',
#   resource: 'user',
#   id: "1",
#   action: 'edit',
#   params: {
#      sort: 'ASC',
#      limit: 10
#   }
# }
#

class ParserTest < Minitest::Test

  def test_raises_error_for_malformed_urls
    p = Parser.new
    assert_raises(InvalidURL) do
      p.parse("FOOBARZZZZZ!")
    end
    assert_raises(InvalidURL) do
      p.parse("")
    end
    assert_raises(InvalidURL) do
      p.parse("http://google.com/ http/32")
    end
  end

  def test_parses_simple_url
    p = Parser.new
    expected = {
      http_version: '1.1',
      http_verb: 'GET',
      protocol: 'http',
      domain_name: 'example',
      tld: 'com'
    }
    assert_equal(expected, p.parse("GET http://example.com HTTP/1.1"))
  end

  def test_parses_subdomain
    p = Parser.new
    expected = {
      http_version: '1.1',
      http_verb: 'GET',
      protocol: 'https',
      subdomain: 'mail',
      domain_name: 'example',
      tld: 'com'
    }
    assert_equal(expected, p.parse("GET https://mail.example.com HTTP/1.1"))
  end

  def test_parses_resourceful_url
    p = Parser.new
    expected = {
      http_version: '1.1',
      http_verb: 'GET',
      protocol: 'https',
      subdomain: 'mail',
      domain_name: 'example',
      tld: 'com',
      resource: 'users',
      id: "1",
      action: "edit"
    }
    assert_equal(expected, p.parse("GET https://mail.example.com/users/1/edit HTTP/1.1"))
  end

  def test_parses_full_url
    p = Parser.new
    expected = {
      http_version: '1.1',
      http_verb: 'GET',
      protocol: 'http',
      subdomain: 'www',
      domain_name: 'google',
      tld: 'com',
      resource: 'user',
      id: "1",
      action: "edit",
      params: {
        sort: "ASC",
        limit: "10"
      }
    }
    assert_equal(expected, p.parse("GET http://www.google.com/user/1/edit?sort=ASC&limit=10 HTTP/1.1"))
  end

  def test_parses_RESTFUL_HTTP_COMPLIANT_REQUEST
    p = Parser.new
    expected = {
      http_version: '1.1',
      http_verb: 'GET',
      protocol: 'http',
      subdomain: 'www',
      domain_name: 'google',
      tld: 'com',
      resource: 'user',
      id: "1",
      action: "edit",
      params: {
        sort: "ASC",
        limit: "10"
      }
    }
    assert_equal(expected, p.parse("GET http://www.google.com/user/1/edit?sort=ASC&limit=10 HTTP/1.1"))
  end
end
