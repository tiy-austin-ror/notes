require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/fizzbuzz'

class FizzbuzzTest < Minitest::Test

  def fb
    Fizzbuzz.new
  end

  def test_working
    assert_equal(2, (1 + 1))
  end

  def test_exists
    assert(Fizzbuzz)
  end

  def test_two_for_two
    assert_equal(2, fb.run(2))
  end

  def test_four_for_four
    assert_equal(4, fb.run(4))
  end

  def test_fizz_for_three
    assert_equal("fizz", fb.run(3))
  end

  def test_fizz_for_six
    assert_equal("fizz", fb.run(6))
  end

  def test_buzz_for_five
    assert_equal("buzz", fb.run(5))
  end

  def test_buzz_for_ten
    assert_equal("buzz", fb.run(10))
  end

  def test_fizzbuzz_for_fifteen
    assert_equal("fizzbuzz", fb.run(15))
  end

  def test_fizzbuzz_for_thirty
    assert_equal("fizzbuzz", fb.run(30))
  end
end
