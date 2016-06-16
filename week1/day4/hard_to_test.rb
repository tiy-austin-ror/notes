## Randomness
### It is hard to test deterministically any code that is, by definition, non deterministic.
### General solution is to remove the randomness while testing.


## Loops
### It is hard to test the logic that is nested inside of a loop.
### General solution is to move the logic outside of the loop and test it there.
# 
# loop do
#   deal_cards
#   prompt_player_for_choice
#   evaluate_cards
#   if player_wins?
#     announce_winner
#   end
# end


## (Mutable) State
