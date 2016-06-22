class Messages
  WELCOME = "Welcome to number guesser!"
  DIRECTIONS = "Pick a number 1 though 100"
  TOO_HIGH = "Too high"
  TOO_LOW = "Too low"
  WINNER = "You win"
  OUT_OF_GUESSES = "Sorry, you ran out of guesses"

  PROMPT_CHAR = "▶"

  def self.prompt(attempts)
    "#{attempts} guesses #{PROMPT_CHAR} "
  end
end
