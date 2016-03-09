# Deck
# - The cards
# + Draw
# + Shuffle

# Card (* Value Object *)
# - Suit
# - Value

# Player
# - Hand/Deck
# - Score
# - Name
# + Play a Card/Turn (Draw?)

require_relative '../lib/deck'
require_relative '../lib/player'

class War
  def start
    deck = Deck.new
    deck.shuffle
    @p1   = Player.new("Ruby")
    @p2   = Player.new("Javascript")
    @ties = 0

    while deck.cards_remaining >= 2 do
      system('clear')

      p1_card = deck.draw
      p2_card = deck.draw

      puts "Player One #{p1_card}"
      puts "Player Two #{p2_card}"

      calculate_winner(p1_card, p2_card)

      sleep 0.2
    end

    puts "Final Score"
    puts "-" * 20
    puts "#{@p1.name} -> #{@p1.score}"
    puts "#{@p2.name} -> #{@p2.score }"
    puts "Ties -> #{@ties}"

  end
  def calculate_winner(p1_card, p2_card)
    case
    when p1_card > p2_card
      puts "#{@p1.name} Wins"
      @p1.score += 1
    when p2_card > p1_card
      puts "#{@p2.name} Wins"
      @p2.score += 1
    else
      puts "Tie"
      @ties += 1
    end
  end
  def old_start
    puts "Welcome to War"
    # play 2 random cards from a deck-ish array and pick a winner
    deck = []
    4.times do
      (1..13).each do |n|
        deck.push(n)
      end
    end

    deck = deck.shuffle # Equal to deck.shuffle!

    player_one_score = 0
    player_two_score = 0
    ties = 0

    while deck.length >= 2 do
      system('clear')

      player_one_card = deck.shift
      player_two_card = deck.shift


      puts "Player One #{player_one_card}"
      puts "Player Two #{player_two_card}"

      if player_one_card > player_two_card
        puts "Player One wins!"
        player_one_score += 1
      elsif player_two_card > player_one_card
        puts "Player Two wins!"
        player_two_score += 1
      else
        puts "Tie"
        ties += 1
      end

      puts "Player One -> #{player_one_score}"
      puts "Player Two -> #{player_two_score}"
      puts "Ties -> #{ties}"

      sleep 0.2
    end

    # Deal each player cards from a Deck (or just give them all a deck)
    # Play one card from each player's Deck
    # Decide who wins, by checking who has the highest card
    # Calculate the score to give to each player
    # Repeat until cards are gone.
    # Display Winner
  end
end

War.new.start
