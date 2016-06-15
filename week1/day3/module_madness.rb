# Modules as Namespaces
module Games
  module Yahtzee
    class Player
      attr_reader :score, :name
    end
  end

  module TicTacToe
    class Player
      attr_reader :piece, :moves
    end
  end

  module RockPaperScissors
    class Player
      attr_accessor :wins
    end
  end
end
Games::Yahtzee::Player.new
Games::RockPaperScissors::Player.new


# Modules as Utils
module Math
  def self.double(n)
    n * 2
  end

  def self.square(n)
    n ** 2
  end
end

module Message
  def self.welcome
    "Welcome to the game"
  end

  def self.game_over
    "===== GAME OVER ====="
  end

  def self.center(str)
    str.center(100)
  end
end

puts Message.welcome
puts Message.center("Hello")


# Modules as mixins
module Flying
  def can_fly
    true
  end

  def fly
    "wwwooooooooshhhhh"
  end
end

module Cute
  def is_cute
    "very true"
  end
end

class Kitten
  include Flying
  include Cute
end
