require 'minitest/autorun'
require 'minitest/pride'
# These requires up above include minitest in this file
# so when you run the file it will run as a test suite

class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def display_value
    case @value
    when (1..10) then @value
    when 11 then "J"
    when 12 then "Q"
    when 13 then "K"
    when 14 then "A"
    else
    end
  end
end


class CardTest < Minitest::Test
  # All Tests should be in their own method and begin with "test_"
  def test_card_creation
    card = Card.new(:hearts, 10)

    assert_equal :hearts, card.suit
    assert_equal 10, card.value
  end

  def test_display_value
    four = Card.new(:hearts, 4)
    queen = Card.new(:hearts, 12)
    king = Card.new(:diamond, 13)

    assert_equal 4, four.display_value
    assert_equal "Q", queen.display_value
    assert_equal "K", king.display_value
    #assert_equal should be the expected value followed by the actual value
    # The "actual value" is when you run the method you are trying to test
  end
end
