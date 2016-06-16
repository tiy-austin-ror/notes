require_relative '../lib/card'
require_relative '../lib/deck'
require_relative '../lib/player'
require_relative '../lib/game'

# Greet the user
# Ask their name
# Build the deck
# Play the game
#  - Dealing each player a card
#  - Eval which card wins
#  - Add the score to the winner
#  - Rinse. Repeat.
# Announce Winner
# End game

Game.new.start
