module Display

  def self.cell(cell, index)
    if cell.nil?
      print index.succ
    else
      print cell
    end
    print " "
    puts if (index.succ % 3).zero?
  end

  def self.board(game)
    puts "Functional Ruby Tic Tac Toe"
    puts "-" * `tput cols`.to_i

    game[:board].each.with_index do |cell, index|
      cell(cell, index)
    end
    puts

    puts "Turn: #{game[:turn]}"
    puts "State: #{game[:state]}"
    puts "Winner: #{game[:winner]}"
  end

  def self.prompt(msg)
    print "#{msg}  >> "
  end
end
