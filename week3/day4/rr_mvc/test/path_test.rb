require 'test_helper'
require 'path'

module T
  class Path
    def initialize(*args)
      @real_path = ::Path.new(*args)
    end
    def method_missing(*args)
      @real_path.send(*args)
    end
  end
end

class PathTest< Minitest::Test

  def test_assign_params_root
    p = T::Path.new('', '/', '', '')
    assert_equal({}, p.assign_params(T.empty_request(paths:['/'])))
  end

  def test_assign_params_empty
    p = T::Path.new('', '/users', '', '')
    assert_equal({}, p.assign_params(T.empty_request(paths: ['users'])))
  end

  def test_assign_params_simple
    p = T::Path.new('', '/users/:id', '', '')
    assert_equal({ id: "1" }, p.assign_params(T.empty_request(paths: ['users', '1'])))
  end

  def test_assign_params_complex
    p = T::Path.new('',  'users/:user_id/posts/:post_id/comments/:title', '', '')
    req = T.empty_request(paths: ['users', '1', 'posts', '18', 'comments', 'foo-bar'])
    assert_equal(
      { user_id: "1",
        post_id: "18",
        title: "foo-bar"
      },
       p.assign_params(req)
    )
  end

  def test_route_match_simple
    p = T::Path.new('', '/users', '', '')
    assert p.route_match?('/users')
    refute p.route_match?('/users/foo')
    refute p.route_match?('/foobar')
  end

  def test_route_match_exactly
    p = T::Path.new('', '/luke', '', '')
    assert p.route_match?('/luke')
    refute p.route_match?('/luuke')
    refute p.route_match?('/luuuke')
    refute p.route_match?('/luuuuuke')
    refute p.route_match?('/lukeeeeee')
    refute p.route_match?('/lukefoobarbar')
  end

  def test_route_match
    assert T::Path.new('', '/users/:id', '', '').route_match?("/users/1")
    assert T::Path.new('', '/users/:user_id', '', '').route_match?("/users/1")
    refute T::Path.new('', '/users/new', '', '').route_match?("/users/1")
    refute T::Path.new('', '/users/show', '', '').route_match?("/users/1")
    refute T::Path.new('', '/users/profile', '', '').route_match?("/users/1")
    refute T::Path.new('', '/users/:id/profile', '', '').route_match?("/users/1")
  end

  def test_route_match_complex
    assert T::Path.new('', '/users/:id/posts/:post_id', '', '').route_match?("/users/1/posts/4")
    assert T::Path.new('', '/users/:foo/posts/:bar', '', '').route_match?("/users/1/posts/4")
    refute T::Path.new('', '/blog/:id/posts/:post_id', '', '').route_match?("/users/1/posts/4")
  end

  def con(route)
    path = Path.new('','','','')
    path.send(:replace_dynamic_segments, route)
  end

  def test_converts_ids
    assert_equal('/(.+)', con('/:a'))
    assert_equal('/(.+)', con('/:id'))
    assert_equal('/users/(.+)', con('/users/:id'))
    assert_equal('/users/(.+)/edit', con('/users/:id/edit'))
  end

  def test_converts_names
    assert_equal('/(.+)', con('/:name'))
    assert_equal('/users/(.+)', con('/users/:name'))
    assert_equal('/users/(.+)/edit', con('/users/:name/edit'))
  end

  def test_multiple_dynamic_segments
    assert_equal('/users/(.+)/edit/(.+)', con('/users/:name/edit/:id'))
  end

  def test_rails_level_dynamic_segments
    skip # A Regexp exercise for someone else 😉
    assert_equal('/(.+)/(.+)/(.+)', con('/:resource/:id/:action'))
  end
end

