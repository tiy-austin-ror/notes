module Board
  def self.winning_moves
    [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
  end

  def self.place(player)
    case player
    when :human then :X
    when :computer then :O
    when nil then nil
    else
      player
    end
  end

  def self.cell_player(cell)
    case cell
    when :X then :human
    when :O then :computer
    when "" then nil
    else
      cell
    end
  end

  def self.update_board(id, player, board)
    board.map.with_index do |cell, index|
      if index == id
        place(player)
      else
        cell
      end
    end
  end

  def self.make_move(id, game)
    game.merge({
      board: update_board(id, game[:turn], game[:board])
    })
  end

  def self.moves_for(board, player)
    board.map.with_index do |cell, index|
      index if cell == place(player)
    end.compact
  end
end
