require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'dollar_price returns price in dollars insead of pennies' do
    item = Item.new(price: 1000)
    assert_equal(10, item.dollar_price)
  end

  test 'display_price returns dollar_price wrapped in string with $' do
    item = Item.new(price: 1000)
    assert_equal("$10", item.display_price)
  end
end
