require 'test_helper'
require 'router'
require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/assets_controller'

class BadTestRouter < Router
end

class TestRouter < Router
  def routes
  end
end

class RouterTest < Minitest::Test
  def test_bad_test_router_raises_error
    assert_raises do
      BadTestRouter.new(T.empty_request).route
    end
  end

  def test_router_returns_404_with_no_routes
    response = TestRouter.new(T.empty_request).route
    assert_equal "404 NOT FOUND", response[:status]
  end
end
