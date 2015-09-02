class Game
  MAX_GUESSES = 5
  MAX_NUMBER  = 100

  def initialize
    @out = Printer.new
    @in  = Reader.new
  end

  def setup
    @number   = rand(MAX_NUMBER)
    @guesses  = []
  end

  def start
    welcome
    setup
    run_game
    gameover
  end

  private

  def run_game
    while guesses_left? do
      response = get_int(Display.prompt(@guesses))
      validate_input(response)
      evaluate_guess(response)
    end
  end

  def validate_input(guess)
    if @guesses.include?(guess)
      @out.print(Display::REPEATED_GUESS)
    else
      @guesses.push(guess)
    end
  end

  def evaluate_guess(guess)
    return @out.puts Display::TOO_LOW  if guess < @number
    return @out.puts Display::TOO_HIGH if guess > @number
    if guess == @number
      @out.puts Display::CORRECT
      gameover
    end
  end

  def guesses_left?
    @guesses.length < MAX_GUESSES
  end

  def welcome
    @out.puts(Display::WELCOME)
  end

  def gameover
    @out.puts(Display.gameover(@number))
    exit
  end

  def get(prompt)
    @out.print(Display.prompt(@guesses))
    response = @in.gets
    exit if response == 'exit'
    response
  end

  def get_int(prompt)
    get(prompt).to_i
  end

end
