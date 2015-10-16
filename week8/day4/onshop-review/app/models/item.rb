class Item < ActiveRecord::Base
  paginates_per 8

  def dollar_price
    price / 100
  end

  def display_price
    "$#{dollar_price}"
  end

end
