def double(n)
  n * 2        # => 20, 2, 0, -2
end

def square(n)
  n * n        # => 400, 1, 0, 1
end

def assert_equal(expectation, actual)
  if expectation == actual                                                                # => true, true, true, true, true, true, true, true, true, false
    "True!"                                                                               # => "True!", "True!", "True!", "True!", "True!", "True!", "True!", "True!", "True!"
  else
    fail "Test did not pass! expected #{expectation.inspect}, but got #{actual.inspect}"  # ~> RuntimeError: Test did not pass! expected "fizz", but got nil
  end                                                                                     # => "True!", "True!", "True!", "True!", "True!", "True!", "True!", "True!", "True!"
end

def test_double
  assert_equal(20, double(10))  # => "True!"
  assert_equal(2, double(1))    # => "True!"
  assert_equal(0, double(0))    # => "True!"
  assert_equal(-2, double(-1))  # => "True!"
end

def test_square
  assert_equal(400, square(20))  # => "True!"
  assert_equal(1, square(1))     # => "True!"
  assert_equal(0, square(0))     # => "True!"
  assert_equal(1, square(-1))    # => "True!"
end

test_double  # => "True!"
test_square  # => "True!"


def fizz(n)
  if (n % 3).zero?  # => false, true
    'fizz'     # => nil
  else
    n               # => 2
  end               # => 2, nil
end

def test_fizz
  assert_equal(2,      fizz(2))  # => "True!"
  assert_equal('fizz', fizz(3))
  assert_equal(5,      fizz(5))
end


test_fizz
