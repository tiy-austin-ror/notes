require_relative '../lib/messages'
require_relative '../lib/display'
require_relative '../lib/say'
require_relative '../lib/console'

class Game
  MAGIC_NUM = rand(1..100)
  MAX_ATTEMPTS = 5

  def initialize(io = Display.new)
    @io = io
  end

  def run
    welcome

    attempts = MAX_ATTEMPTS

    until attempts < 0 do
      number = get_input(attempts)

      process_turn(number)

      attempts -= 1
    end

    game_over
  end

  private

  def welcome
    @io.puts(Messages::WELCOME)
  end

  def process_turn(number)
    if too_high?(number)
      @io.puts(Messages::TOO_HIGH)
    elsif too_low?(number)
      @io.puts(Messages::TOO_LOW)
    else
      winner
    end
  end

  def get_input(attempts)
    @io.puts(Messages::DIRECTIONS)
    @io.print(Messages.prompt(attempts))

    @io.get_int
  end

  def too_high?(number)
    number > MAGIC_NUM
  end

  def too_low?(number)
    number < MAGIC_NUM
  end

  def winner
    @io.puts(Messages::WINNER)
    exit
  end

  def game_over
    @io.puts(Messages::OUT_OF_GUESSES)
  end
end

Game.new(Say.new).run
