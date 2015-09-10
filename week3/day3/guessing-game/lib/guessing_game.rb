class GuessingGame

  def initialize(game_state)
    @game_state = game_state
  end

  def words
    %w(apple pear migration ruby rails concern solid mvc gem bundle)
  end

  def start
    puts "Welcome to 'guy dies if you are bad at your job'"

    chosen_letters = []
    @game_state.word = words.sample
    @game_state.player_id = User.first.id #Temporary hard coding

    while @game_state.turn < 6 do
      puts chosen_letters.inspect

      puts "_ " * @game_state.word.length

      puts "Guess a letter (or @ to quit)> ?"
      response = gets.chomp

      if response == '@'
        @game_state.chosen_letters = serialize(chosen_letters)
        @game_state.save
        exit
      end

      chosen_letters << response

      if @game_state.word.include?(chosen_letters.last)
        puts "That letter was in the word"
      else
        puts "wrong"
      end

      @game_state.turn += 1
    end
    puts @game_state.word
    puts "You lose!"
  end

  def serialize(arr)
    arr.join('~')
  end
end
