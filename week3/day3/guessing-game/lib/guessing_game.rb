class GuessingGame

  def initialize(game_state)
    @game_state = game_state
  end

  def words
    %w(apple pear migration ruby rails concern solid mvc gem bundle)
  end

  def display_guess_progress(chosen_letters)
    @game_state.word.chars.each do |char|
      if chosen_letters.include?(char)
        print char
      else
        print "_"
      end
    end
    print "\n"
  end

  def winner?(chosen_letters)
    result = @game_state.word.chars.select { |char| chosen_letters.include?(char) }
    result.join == @game_state.word
  end

  def start
    puts "Welcome to 'guy dies if you are bad at your job'"

    if @game_state.chosen_letters.nil?
      chosen_letters = []
    else
      chosen_letters = deserialize(@game_state.chosen_letters)
    end
    if @game_state.word.nil?
      @game_state.word = words.sample
    end
    @game_state.player_id = User.first.id #Temporary hard coding

    while @game_state.turn < 6 do
      puts chosen_letters.inspect

      display_guess_progress(chosen_letters)

      if winner?(chosen_letters)
        puts "YOU WIN!"
        @game_state.destroy!
        exit
      end

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
        @game_state.turn += 1
      end
    end
    puts @game_state.word
    puts "You lose!"
    @game_state.destroy!
  end

  def serialize(arr)
    arr.join('~')
  end

  def deserialize(str)
    str.split('~')
  end
end
