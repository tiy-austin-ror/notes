#
# Fizzbuzz!
#
# Write a method that does the following
# When given a number it will return that number
# If the number is divisible by 3 return "fizz"
# If the number is divisible by 5 return "buzz"
# If the number id div by 3 and 5 return "fizzbuzz"
###
# After completion. Write a loop that will run fizzbuzz
# the method on every number 1 - 100 and puts the return
# value of each.
##
# (Hint: Modulo)
# Always take the smallest possible next step
# Never ever write more code than you need to make any failing test pass
require 'minitest/autorun'
require 'minitest/pride'

# Fizzbuzz goes here
def fizzbuzz(n)
  return "fizzbuzz" if (n % 15).zero?
  return "fizz" if (n % 3).zero?
  return "buzz" if (n % 5).zero?
  n
end

class FizzBuzzTest < Minitest::Test
  def test_fizzbuzz_exists
    assert fizzbuzz(0)
  end

  def test_1_for_1
    assert_equal 1, fizzbuzz(1)
  end

  def test_2_for_2
    assert_equal 2, fizzbuzz(2)
  end

  def test_fizz_for_3
    assert_equal "fizz", fizzbuzz(3)
  end

  def test_buzz_for_5
    assert_equal "buzz", fizzbuzz(5)
  end

  def test_fizz_for_6
    assert_equal "fizz", fizzbuzz(6)
  end

  def test_buzz_for_10
    assert_equal "buzz", fizzbuzz(10)
  end

  def test_fizzbuzz_for_15
    assert_equal "fizzbuzz", fizzbuzz(15)
  end

  def test_fizzbuzz_for_30
    assert_equal "fizzbuzz", fizzbuzz(30)
  end
end
