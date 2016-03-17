class Card
  attr_accessor :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end
# Value Object

class CardPresenter
  def initialize(card)
    @card = card
  end

  def display
    puts ["----------",
          " #{@card.suit}",
          " -------  ",
          " #{@card.value}",
          "----------"]
  end
end
