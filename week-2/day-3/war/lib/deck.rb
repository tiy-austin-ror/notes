class Deck
  attr_reader :cards
  def initialize
    @cards = []
    4.times do
      (1..13).each do |n|
        @cards.push(n)
      end
    end
  end

  def cards_remaining
    @cards.length
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def draw
    @cards.shift
  end
end
