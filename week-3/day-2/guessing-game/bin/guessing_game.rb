require_relative '../lib/game_manager'
require_relative '../lib/io_adapter'
require_relative '../lib/console_input'
require_relative '../lib/console_output'
require_relative '../lib/html_output'
require_relative '../lib/say_output'
require_relative '../lib/messages'

class GuessingGame

  def start_game(game_manager, io)
    user_guess = nil
    io.puts(Messages::WELCOME)
    until game_manager.correct_guess?(user_guess) do
      user_guess = get_user_number_guess(io)

      if game_manager.too_high?(user_guess)
        io.puts(Messages::HIGH)
      elsif game_manager.too_low?(user_guess)
        io.puts(Messages::LOW)
      end

    end
    io.puts(Messages::WIN)
    exit
  end

  def get_user_number_guess(io)
    io.puts(Messages::PROMPT)
    io.gets.to_i
  end
end

gm = GameManager.new
input = ConsoleInput.new
# output = ConsoleOutput.new
# output = SayOutput.new
output = HTMLOutput.new

io = IOAdapter.new(input, output

GuessingGame.new.start_game(gm, io)
