require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/morning'

class MorningTest < Minitest::Test
  def test_working
    assert_equal(2, (1 + 1))
  end
end
