require 'minitest/autorun'
require 'minitest/pride'

class DividedByFiveError < StandardError
  def message
    "Sorry, cannot divide by 5"
  end
end

def divide_100_by(n)
  raise DividedByFiveError if n == 5
  fail if n == 100
  100 / n
end

class ExceptionsTest < Minitest::Test
  def test_raises_error
    assert_raises(ZeroDivisionError) do
      divide_100_by(0)
    end

    assert_raises do
      divide_100_by(100)
    end

    assert_raises(DividedByFiveError) do
      divide_100_by(5)
    end
  end
end
