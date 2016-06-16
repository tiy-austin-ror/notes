def double(n)
  n * 2
end

# Test
# result = double(2)
#
# if result == 4
#   puts "Double works"
# else
#   puts "Double does not work"
# end

def assert_equal(expected_value, actual_value)
  if expected_value == actual_value
    print "."
  else
    raise "Test Failed: Expected #{expected_value}, but got #{actual_value}"
  end
end


assert_equal(4, double(2))
assert_equal(8, double(4))
assert_equal(16, double(8))
