#
#  War
#
#  - 2 players
#  - 1 human and 1 computer
#  - each player draws a card
#    - player with higher card value wins
#  - play until deck is empty
#  - print winner by who won the most times
#
#  A card class. (A value object is a class with no behavior)
#   - suit
#   - value
#  A deck class.
#   - draw()
#   - shuffle()
#  A player class?
#   - score
#  A computer class?
#   - score
#  A Game class
#   - calculate_winner()
#   - start()
#   - end()
class Computer
end
class Player
end

class Card
  def initialize(value, suit)
    @value = value             # => 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
    @suit  = suit              # => :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades...
  end

  def value
    @value
  end

  def display
    "#{@value} of #{@suit}"
  end
end


class Deck
  def initialize
    @cards = []
    [:hearts, :diamonds, :clubs, :spades].each do |suit|
      2.upto(14) do |n|
        new_card = Card.new(n, suit)
        @cards.push(new_card)
      end
    end
  end
  def draw
    @cards.pop
  end
  def shuffle
    @cards.shuffle!
  end
  def length
    @cards.length
  end
end


puts "Welcome to WAR"                    # => nil
print "Would you like to play? (y/n): "  # => nil
response = gets.chomp                    # ~> NoMethodError: undefined method `chomp' for nil:NilClass
computer = Computer.new           # => #<Computer:0x007fd50ea81cf0>
player   = Player.new             # => #<Player:0x007fd50ea81bb0>
deck = Deck.new                   # => #<Deck:0x007fd50ea81a98 @cards=[#<Card:0x007fd50ea81700 @value=2, @suit=:hearts>, #<Card:0x007fd50ea812a0 @value=3, @suit=:hearts>, #<Card:0x007fd50ea80f80 @value=4, @suit=:hearts>, #<Card:0x007fd50ea80bc0 @value=5, @suit=:hearts>, #<Card:0x007fd50ea80760 @value=6, @suit=:hearts>, #<Card:0x007fd50ea80260 @value=7, @suit=:hearts>, #<Card:0x007fd50ea7bc88 @value=8, @suit=:hearts>, #<Card:0x007fd50ea7b648 @value=9, @suit=:hearts>, #<Card:0x007fd50ea7af68 @v...
deck.shuffle
if response.downcase == 'y'       # ~> NameError: undefined local variable or method `response' for main:Object
  puts "you are now playing WAR"

  player_score = 0
  computer_score = 0
  while deck.length > 0 do
    gets
    player_card   = deck.draw
    computer_card = deck.draw

    puts "Player #{player_card.display} vs Computer #{computer_card.display}"
    if player_card.value > computer_card.value
      puts 'player wins!'
      player_score += 1
    elsif player_card.value < computer_card.value
      puts 'computer wins!'
      computer_score += 1
    else
      puts 'tie!'
    end
  end
  puts "-------------------------"
  puts "-   FINAL     SCORE     -"
  puts "-------------------------"
  puts "-   #{player_score} vs #{computer_score}    -"
  puts "-------------------------"
  if player_score >= computer_score
    puts "You (player) win! With a score of #{player_score}"
  else
    puts "You (player) lose! You only had a horrible score of #{player_score}"
  end
else
  puts "Smart."
end









# ~> NameError
# ~> undefined local variable or method `response' for main:Object
# ~>
# ~> /Users/Justin/theironyard/aug/week1/day3/war.rb:62:in `<main>'
