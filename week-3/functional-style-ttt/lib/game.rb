module Game
  def self.new_game
    {
      turn: :human,
      board: [
        nil, nil, nil,
        nil, nil, nil,
        nil, nil, nil
      ],
      winner: :none,
      state: :playing,
      message: "Pick your starting move"
    }
  end

  def self.switch_player(player)
    case player
    when :human then :computer
    when :computer then :human
    else
      player
    end
  end

  def self.switch_current_player(game)
    new_message =
      if game[:turn] == :human
        "Computer is thinking"
      elsif game[:turn] == :computer
        "Your Move"
      end
    game.merge({
      turn: switch_player(game[:turn]),
      message: new_message
    })
  end

  def self.check_for_winners(game)
    moves = Board.moves_for(game[:board], game[:turn])
    did_win = Board.winning_moves.any? do |win_set|
      (win_set - moves).empty?
    end
    if did_win
      game.merge({
        winner: game[:turn],
        state: game[:game_over]
      })
    else
      game
    end
  end

  def self.valid_move(id, game)
    Board.moves_for(game[:board], nil).include?(id)
  end
end
