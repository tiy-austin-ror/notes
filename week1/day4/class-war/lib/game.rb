class Game
  def welcome
    puts
    puts "Welcome to the game of war"
    puts
  end

  def prompt(msg)
    print msg
    return gets.chomp
  end

  def start
    welcome

    name = prompt("What is your name? >")

    @player   = Player.new(name)
    @computer = Player.new("HIVEMIND2800")
    @deck     = Deck.new

    while game_running? do
      reset_screen
      give_players_cards
      show_player_cards
      score_players_cards
    end

    show_final_score
  end

  def game_running?
    @deck.count > 0
  end

  def reset_screen
    sleep(0.1)
    system('clear')
  end

  def give_players_cards
    @player.card   = @deck.draw
    @computer.card = @deck.draw
  end

  def show_player_cards
    puts @player.show_card
    puts @computer.show_card
  end

  def score_players_cards
    if @player.card.value > @computer.card.value
      puts "Win"
      @player.score += 1
    elsif @player.card.value < @computer.card.value
      puts "Lose"
      @computer.score += 1
    else
      puts "Tie"
    end
  end

  def show_final_score
    puts @player.show_score
    puts @computer.show_score
  end
end
