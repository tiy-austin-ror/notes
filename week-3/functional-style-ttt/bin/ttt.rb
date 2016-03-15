require_relative '../lib/game.rb'
require_relative '../lib/board.rb'
require_relative '../lib/ai.rb'
require_relative '../lib/display.rb'
require_relative '../lib/utils.rb'

module TTT
  def self.start
    game = Game.new_game
    loop do
      system('clear')
      Display.board(game)

      if game[:winner] == :none
        game = update(nil, game)
      else
        exit
      end
    end
  end

  def self.update(response, game)
    until Game.valid_move(response.to_i - 1, game) do
      Display.prompt(game[:message])
      response = gets.chomp.to_i
    end
    updated_game     = Board.make_move(response.to_i - 1, game)
    win_checked_game = Game.check_for_winners(updated_game)

    return win_checked_game if win_checked_game[:winner] != :none

    switched_game    = Game.switch_current_player(win_checked_game)
    game_with_computer_move = Board.make_move(Ai.best_move(switched_game[:board], Game.switch_player(switched_game[:player])), switched_game)
    comp_win_checked_game = Game.check_for_winners(game_with_computer_move)

    return comp_win_checked_game if comp_win_checked_game[:winner] != :none

    comp_switched_game    = Game.switch_current_player(comp_win_checked_game)
    return comp_switched_game
  end
end

TTT.start
