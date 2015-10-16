class Game
  MAX_GUESSES = 5
  MAX_NUMBER  = 100

  def setup
    @number   = rand(MAX_NUMBER)
    @guesses  = []
  end

  def start
    welcome
    setup
    while guesses_left? do
      response = get_int(prompt)
      validate_input(response)
      evaluate_guess(response)
    end
    gameover
  end

  private

  def validate_input(guess)
    if @guesses.include?(guess)
      print "You guessed this already and it is "
    else
      @guesses << guess
    end
  end

  def evaluate_guess(guess)
    if guess < @number
      puts "too low"
    elsif guess > @number
      puts "too high"
    elsif guess == @number
      puts "Yah!"
      gameover
    else
      puts "What did you do?"
    end
  end

  def guesses_left?
    @guesses.length < MAX_GUESSES
  end

  def welcome
    puts "Guessing game!"
  end

  def gameover
    puts "Number was #{@number}"
    exit
  end

  def prompt
    "[#{MAX_GUESSES - @guesses.length}] Pick a @number between 1 and #{MAX_NUMBER}"
  end

  def get(prompt)
    print "#{prompt} > "
    response = gets.chomp
    exit if response == 'exit'
    response
  end

  def get_int(prompt)
    get(prompt).to_i
  end

end
