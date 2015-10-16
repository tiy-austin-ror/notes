module Display
  WELCOME = "Guessing game!"
  REPEATED_GUESS = "You guessed this already and it is "
  TOO_HIGH = "too high"
  TOO_LOW  = "too low"
  CORRECT  = "Yah!"

  def self.prompt(guesses)
    "[#{Game::MAX_GUESSES - guesses.length}] Pick a number between 1 and #{Game::MAX_NUMBER} > "
  end

  def self.gameover(number)
    "Number was #{number}"
  end

end
