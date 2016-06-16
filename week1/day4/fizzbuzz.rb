require 'minitest/autorun'
require 'minitest/pride'

# Fizzbuzz
# Write a method that will take a number and return something based on these rules.
# If the number is div by 3 then return 'fizz'
# If its div by 5 then return 'buzz'
# if its div by 3 and 5 then return 'fizzbuzz'
# every other number should be returned as is
# Write a program that will use this method to print all numbers 1 through 100


# My Production code goes here
def fizzbuzz(number)
  f = "fizz"
  b = "buzz"
  case
  when (number % 15).zero? then f + b
  when (number %  5).zero? then b
  when (number %  3).zero? then f
  else
    number
  end
end

100.times do |n|
  fizzbuzz(n + 1)
end

(1..100).each do |n|
  fizzbuzz(n)
end

(1).upto(100).each do |n|
  fizzbuzz(n)
end

# My Tests go here
class FizzbuzzTest < Minitest::Test
  def test_fizz_returns_for_three
    assert_equal("fizz", fizzbuzz(3))
    assert_equal("fizz", fizzbuzz(6))
    assert_equal("fizz", fizzbuzz(9))
  end

  def test_returns_two_for_two
    assert_equal(2, fizzbuzz(2))
  end

  def test_buzz_returns_for_div_by_5
    assert_equal("buzz", fizzbuzz(5))
    assert_equal("buzz", fizzbuzz(10))
  end

  def test_fizzbuzz_for_3_and_5
    assert_equal("fizzbuzz", fizzbuzz(15))
    assert_equal("fizzbuzz", fizzbuzz(30))
  end
end
