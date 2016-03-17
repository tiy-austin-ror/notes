require 'minitest/autorun'
require 'minitest/pride'


### Production Code
# cc = CoinChanger.new
# cc.make_change(50) == [25, 25]
# cc.make_change(75) == [25, 25, 25]
# cc.make_change(76) == [25, 25, 25, 1]
# cc.make_change(18) == [10, 5, 1, 1, 1]
# cc.make_change(6) == [5, 1]
# cc.make_change(4) == [1, 1, 1, 1]

class CoinChanger
  def make_change(n)
    # [25, 10, 5, 1].flat_map do |coin|
    #     change = [coin] * (remaining / coin)
    #     remaining -= ((remaining / coin) * coin)
    #     change
    # end

    remaining_change = n
    purse = []
    if n >= 25
      purse.push([25] * (n / 25))
      remaining_change -= ((n / 25) * 25)
    end

    if remaining_change >= 10
      purse.push([10] * (n / 10))
      remaining_change -= ((remaining_change / 10) * 10)
    end

    if remaining_change >= 5
      purse.push([5])
      remaining_change -= ((remaining_change / 5) * 5)
    end

    if remaining_change > 0
      purse.push([1] * remaining_change)
    end

    return purse.flatten
  end
end


### Test Code

class CoinChangerTest < Minitest::Test
  def test_responds_to_changer
    assert_respond_to(CoinChanger.new, :make_change)
  end

  def test_returns_pennies
    cc = CoinChanger.new
    assert_equal([1,], cc.make_change(1))
    assert_equal([1, 1], cc.make_change(2))
    assert_equal([1, 1, 1], cc.make_change(3))
    assert_equal([1, 1, 1, 1], cc.make_change(4))
  end

  def test_returns_nickle
    cc = CoinChanger.new
    assert_equal([5], cc.make_change(5))
  end

  def test_returns_dimes
    cc = CoinChanger.new
    assert_equal([10], cc.make_change(10))
    assert_equal([10, 10], cc.make_change(20))
  end

  def test_returns_quarters
    cc = CoinChanger.new
    assert_equal([25], cc.make_change(25))
    assert_equal([25, 25], cc.make_change(50))
    assert_equal([25, 25, 25], cc.make_change(75))
  end

  def test_returns_mixed_coins
    cc = CoinChanger.new
    assert_equal([5, 1], cc.make_change(6))
    assert_equal([10, 5, 1, 1], cc.make_change(17))
  end
end
