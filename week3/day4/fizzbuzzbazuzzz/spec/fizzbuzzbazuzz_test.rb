require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

require_relative '../lib/fizzbuzzbazuzz'  # => true

class FizzBuzzBaZuzzTest < MiniTest::Test
  def fb
    FizzBuzzBaZuzz.new                     # => #<FizzBuzzBaZuzz:0x007f955e9f10f0>, #<FizzBuzzBaZuzz:0x007f955e9f0ba0>, #<FizzBuzzBaZuzz:0x007f955e9f08a8>, #<FizzBuzzBaZuzz:0x007f955e9f03f8>, #<FizzBuzzBaZuzz:0x007f955e9f0100>, #<FizzBuzzBaZuzz:0x007f955e9ebc18>, #<FizzBuzzBaZuzz:0x007f955e9eb920>, #<FizzBuzzBaZuzz:0x007f955e9eb178>, #<FizzBuzzBaZuzz:0x007f955e9eac78>, #<FizzBuzzBaZuzz:0x007f955e9ea980>, #<FizzBuzzBaZuzz:0x007f955e9ea4f8>, #<FizzBuzzBaZuzz:0x007f955e9ea250>, #<FizzBuzzBaZuzz:...
  end

  def test_existance
    assert(FizzBuzzBaZuzz)  # => true
  end

  def test_returns_num_for_num
    assert_equal(1, fb.run(1))  # => true
    assert_equal(2, fb.run(2))  # => true
  end

  def test_returns_fizz_for_div_by_3
    assert_equal('fizz', fb.run(3))   # => true
    assert_equal('fizz', fb.run(6))   # => true
  end

  def test_returns_buzz_for_div_by_5
    assert_equal('buzz', fb.run(5))   # => true
    assert_equal('buzz', fb.run(10))  # => true
  end

  def test_returns_fizzbuzz_for_div_by_3_and_5
    assert_equal('fizzbuzz', fb.run(15))        # => true
    assert_equal('fizzbuzz', fb.run(30))        # => true
  end

  def test_returns_bazz_for_div_by_9
    assert_equal('bazz', fb.run(9))   # => true
    assert_equal('bazz', fb.run(18))  # => true
  end

  def test_returns_bazzuzz_for_div_by_5_and_9
    assert_equal('bazuzz', fb.run(45))         # => true
    assert_equal('bazuzz', fb.run(90))         # => true
  end

  def test_runs_from_min_to_max
    assert_equal(['bazz', 'buzz', 11], fb.run(9, 11))  # => true
  end

  def test_runs_in_reverse
    assert_equal(['bazz', 'buzz', 11].reverse, fb.run(9, 11, true))  # => true
  end


end

# >> Run options: --seed 9716
# >>
# >> # Running:
# >>
# >> .........
# >>
# >> Finished in 0.001056s, 8518.7101 runs/s, 14197.8502 assertions/s.
# >>
# >> 9 runs, 15 assertions, 0 failures, 0 errors, 0 skips
