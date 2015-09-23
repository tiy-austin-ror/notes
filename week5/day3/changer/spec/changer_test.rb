require 'minitest/autorun'         # => true
require 'minitest/pride'           # => true
require_relative '../lib/changer'  # => true

class ChangerTest < Minitest::Test
  def test_exists
    assert(Changer)                 # => true
  end

  def test_for
    assert_respond_to(Changer, :for)  # => true
  end

  def test_change_for_pennies
    assert_equal([1], Changer.for(1))        # => true
    assert_equal([1, 1, 1], Changer.for(3))  # => true
  end

  def test_changer_for_nickles
    assert_equal([5], Changer.for(5))  # => true
  end

  def test_changer_for_dimes
    assert_equal([10], Changer.for(10))      # => true
    assert_equal([10, 10], Changer.for(20))  # => true
  end

  def test_changet_for_quarters
    assert_equal([25], Changer.for(25))      # => true
    assert_equal([25, 25], Changer.for(50))  # => true
  end

  def test_changer_returns_mixed_coins
    assert_equal([25, 25, 25, 10, 10, 1, 1, 1, 1], Changer.for(99))  # => true
  end
end

# >> Run options: --seed 9668
# >>
# >> # Running:
# >>
# >> .......
# >>
# >> Finished in 0.001039s, 6735.2897 runs/s, 9621.8424 assertions/s.
# >>
# >> 7 runs, 10 assertions, 0 failures, 0 errors, 0 skips
