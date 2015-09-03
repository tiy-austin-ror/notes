require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/fizzbuzz.rb'

class FizzBuzzTest < Minitest::Test
  def test_fizzbuzz_exists
    assert(Fizzbuzz)
  end

  def test_run_exists
    fb = Fizzbuzz.new
    assert_respond_to(fb, :run)
  end

  def test_run_returns_empty_array_for_zero
    fb = Fizzbuzz.new
    assert_equal([], fb.run(0))
  end

  def test_run_returns_upto_max
    fb = Fizzbuzz.new
    assert_equal([1], fb.run(1))
    assert_equal([1, 2], fb.run(2))
    assert_equal([1, 2, 'fizz'], fb.run(3))
  end

  def test_fizz_buzz_fizzbuzz_return_strings
    fb = Fizzbuzz.new
    assert_equal('xxx', fb.fizz('xxx'))
    assert_equal('xxx', fb.buzz('xxx'))
    assert_equal('xxx', fb.fizzbuzz('xxx'))
  end

  def test_fizz_returns_for_div_by_3_numbers
    fb = Fizzbuzz.new
    assert_equal('fizz', fb.fizz(3))
  end

  def test_fizz_returns_given_number
    fb = Fizzbuzz.new
    assert_equal(2, fb.fizz(2))
  end

  def test_buzz_returns_given_number
    fb = Fizzbuzz.new
    assert_equal(3, fb.buzz(3))
  end

  def test_buzz_returns_for_div_by_5
    fb = Fizzbuzz.new
    assert_equal('buzz', fb.buzz(5))
  end

  def test_fizzbuzz_returns_for_div_by_3_5
    fb = Fizzbuzz.new
    assert_equal('fizzbuzz', fb.fizzbuzz(15))
  end

  def test_fizzbuzz_works
    fb = Fizzbuzz.new
    assert_equal(
       2,
       'fizz',
       4,
       'buzz',
       'fizz',
       7,
       8,
       'fizz',
       'buzz',
       11,
       'fizz',
       13,
       14,
       'fizzbuzz'],
       fb.run(15)
    )
  end

end
