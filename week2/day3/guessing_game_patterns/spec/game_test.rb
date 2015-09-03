require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/display.rb'
require_relative '../lib/printer.rb'
require_relative '../lib/reader.rb'
require_relative '../lib/game.rb'

require_relative './mock_output.rb'

class Game
  def exit
    # I had to override the exit method so calling 'gameover' in my tests...
    # wouldn't actual exit the tests from running. So now it does nothing.
  end
end

class GameTest < MiniTest::Test
  def test_smoke
    assert(2 + 2)
  end

  def test_setup
    game = Game.new
    assert_nil(game.number)
    assert_nil(game.guesses)

    game.setup

    assert_includes((1..Game::MAX_NUMBER), game.number)
    assert_equal(game.guesses, [])
  end

  def test_validate_input_accepts_new_guesses
    game = Game.new
    game.setup
    game.validate_input(50)
    assert_equal(game.guesses, [50])
  end

  def test_validate_input_rejects_duplicate_guesses
    mo = MockOutput.new
    game = Game.new(Printer.new(mo))
    game.setup
    game.validate_input(50)
    game.validate_input(50)

    assert_includes(mo.messages, Display::REPEATED_GUESS)
  end

  def test_evaluate_guess_if_too_high
    mo = MockOutput.new
    game = Game.new(Printer.new(mo))
    game.setup

    game.evaluate_guess(game.number + 5)

    assert_includes(mo.messages, Display::TOO_HIGH)
  end

  def test_evaluate_guess_if_too_low
    mo = MockOutput.new
    game = Game.new(Printer.new(mo))
    game.setup
    game.evaluate_guess(game.number - 5)

    assert_includes(mo.messages, Display::TOO_LOW)
  end

  def test_evaluate_guess_if_correct
    mo = MockOutput.new
    game = Game.new(Printer.new(mo))
    game.setup
    game.evaluate_guess(game.number)

    assert_includes(mo.messages, Display::CORRECT)
  end

  def test_guesses_left
    game = Game.new
    game.setup

    assert(game.guesses_left?)

    game.validate_input(20)
    game.validate_input(30)
    game.validate_input(40)
    game.validate_input(50)
    game.validate_input(60)
    #^Seems wrong, need a 'add_guess' method

    refute(game.guesses_left?)
  end
end
