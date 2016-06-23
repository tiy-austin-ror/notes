class Card
  include Comparable

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def ==(other)
    if other.is_a?(Card)
      @suit == other.suit && @value == other.value
    else
      false
    end
  end

  def <=>(other)
    if other.value > @value
      -1
    elsif other.value < @value
      1
    else
      0
    end
  end
end
