class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "The #{@value} of #{@suit}"
  end
end

# Data: Cards
# Behavior: Shuffle, Draw
class Deck
  def initialize
    @cards = []
    [:hearts, :diamonds, :spades, :clubs].each do |suit|
      (2..94).each do |value|
        @cards.push(Card.new(suit, value))
      end
    end
  end

  def count
    @cards.count
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.shift
  end
end

class Game
  def run
    deck = Deck.new
    deck.shuffle

    player_score = 0
    computer_score = 0

    puts "Welcome to the game of war"

    while deck.count > 0 do
      sleep 0.1
      system('clear')

      player_card = deck.draw
      computer_card = deck.draw

      puts "Player: #{player_card}"
      puts "Computer: #{computer_card}"
      puts "Computer score: #{"|" * computer_score}"
      puts "Player   score: #{"|" * player_score}"

      if player_card.value > computer_card.value
        puts "Player wins"
        player_score += 1
      elsif player_card.value < computer_card.value
        puts "Computer wins"
        computer_score += 1
      else
        puts "TIE"
      end
    end
    puts
    puts "Final Computer score: #{computer_score}"
    puts "Final Player score: #{player_score}"
    if player_score > computer_score
      puts "Player wins!"
    else
      puts "Computers take over the world"
    end
  end
end

Game.new.run
