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
#   id: 1,
#   action: 'edit',
#   params: {
#      sort: 'ASC',
#      limit: 10
#   }
# }
#

class ParserTest < Minitest::Test

  def test_parses_simple_url
    p = Parser.new
    expected = {
      protocol: 'http',
      domain_name: 'example',
      tld: 'com'
    }
    assert_equal(expected, p.parse("http://example.com"))
  end

  def test_parses_subdomain
    p = Parser.new
    expected = {
      protocol: 'https',
      subdomain: 'mail',
      domain_name: 'example',
      tld: 'com'
    }
    assert_equal(expected, p.parse("https://mail.example.com"))
  end

  def test_parses_resourceful_url
    p = Parser.new
    expected = {
      protocol: 'https',
      subdomain: 'mail',
      domain_name: 'example',
      tld: 'com',
      resource: 'users',
      id: "1",
      action: "edit"
    }
    assert_equal(expected, p.parse("https://mail.example.com/users/1/edit"))
  end

  def test_parses_full_url
    p = Parser.new
    expected = {
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
    assert_equal(expected, p.parse("http://www.google.com/user/1/edit?sort=ASC&limit=10"))
  end
end
