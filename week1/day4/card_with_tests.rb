class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def display_card
    "The #{display_value} of #{@suit}"
  end

  def display_value
    case @value
    when 11 then 'J'
    when 12 then 'Q'
    when 13 then 'K'
    when 14 then 'A'
    else
      @value
    end
  end
end

def assert_equal(expected_value, actual_value)
  if expected_value == actual_value
    print "."
  else
    raise "Test Failed: Expected #{expected_value}, but got #{actual_value}"
  end
end

def test_display_card
  card = Card.new(:hearts, 5)

  actual_value = card.display_card
  expected_value = "The 5 of hearts"

  assert_equal(expected_value, actual_value)
end

def test_display_value
  jack  = Card.new(:hearts, 11)
  queen = Card.new(:hearts, 12)
  king  = Card.new(:hearts, 13)
  ace   = Card.new(:hearts, 14)

  assert_equal("J", jack.display_value)
  assert_equal("Q", queen.display_value)
  assert_equal("K", king.display_value)
  assert_equal("A", ace.display_value)
end

assert_equal(:hearts, Card.new(:hearts, 5).suit)
assert_equal(5, Card.new(:hearts, 5).value)

test_display_card
test_display_value
