require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/game.rb'
require_relative '../lib/display.rb'

class DisplayTest < MiniTest::Test

  def test_prompt_with_no_guesses
    expectation = "[5] Pick a number between 1 and 100 > "
    assert_equal(expectation, Display.prompt([]))
  end

  def test_prompt_with_guesses
    expectation = "[0] Pick a number between 1 and 100 > "
    assert_equal(expectation, Display.prompt([1,2,3,4,5]))
  end

  def test_gameover
    assert_equal("Number was 44", Display.gameover(44))
  end
end
