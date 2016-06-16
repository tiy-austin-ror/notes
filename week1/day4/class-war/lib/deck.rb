class Deck
  def initialize
    @cards = []
    ["♡", "♧", "♢", "♤"].each do |suit|
      (2..14).each do |value|
        @cards << Card.new(suit, value)
      end
    end
    @cards.shuffle!
  end

  def count
    @cards.count
  end

  def draw
    @cards.shift
  end
end
