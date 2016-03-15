module Ai
  def self.is_winner(board, player)
    moves = Board.moves_for(board, player)
    Board.winning_moves.any? do |win_set|
      (win_set - moves).empty?
    end
  end

  def self.best_move(board, player)
    default_win_score = 1
    moves = Board.moves_for(board, nil)
    mapped_moves = moves.map { |move| rank_board(Board.update_board(move, player, board), player, default_win_score) }
    puts mapped_moves
    scores = Utils.zipmap(moves, mapped_moves)
    puts scores
    best_score = scores.values.max
    best_move = moves.select { |move| scores.fetch(move, 0) == best_score }
    best_move.first
  end

  def self.rank_board(board, player, win_score)
    if is_winner(board, player)
      win_score += 1
    elsif is_winner(board, Game.switch_player(player))
      win_score -= 1
    elsif Board.moves_for(board, nil).empty?
      win_score = 0
    else
      opponent = Game.switch_player(player)
      next_board = Board.update_board( (best_move board, opponent), opponent, board)

      rank_board(next_board, opponent, (win_score * -1))
    end
  end
end
