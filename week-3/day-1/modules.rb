# Before we had namespaces
# class JH_Player
#   def JH_NEW
# end

# Modules as Namespaces
module GameLibrary
  module BlackJack
    class Game
      def initialize
        @player = Player.new
      end
    end

    class Player
      # blackjack
    end
  end
  # For example:  ( i wouldn't write this here )
  # BlackJack::Player.new # This player is nested inside of the BlackJack Module

  module TicTacToe
    class Player
      # ttt
    end
  end

  module RockPaperScissors
    class Player
      # rock paper scissors
    end
  end
end

# Modules as mixins
## Modules should be groups of behavior that are to be reused in other classes.
## Modules shouldn't be nouns or objects like classes, sense they aren't instantiated

class Person
  def gets_lunch
    puts "* I'm up for anything! *"
  end
end

module Foodie
  def gets_lunch
    puts "* What is their selection of brie? *"
  end
end

module BeerSnob
  def gets_lunch
    puts "* What do they have on tap? *"
  end
end


class Portlandian < Person
  include Foodie
end

class Austinite < Person
  include BeerSnob
end

class SanFranciscan < Person
  include Foodie
  include BeerSnob
end



module Flying
  def can_fly?
    true
  end

  def wings
    2
  end
end

module Driving
  def can_drive?
    true
  end

  def wheels
    4
  end
end

class Car
  include Driving
end

class Airplane
  include Flying
end

class SuperJet
  include Flying
  include Driving
end


# Modules as Utility Libraries
module Utils
  SCREEN_WIDTH = 25
  def Utils.center_str(msg, length)
    if length > SCREEN_WIDTH
      length  = SCREEN_WIDTH
    end
    print "-" * ((length / 2) - (msg.length/2))
    print msg
    puts "-" * ((length / 2) - (msg.length/2))
  end
end
