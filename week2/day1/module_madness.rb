#Modules as namespaces
module Games
  module TicTacToe
    class Player
      attr_accessor :piece, :moves, :name  # => nil
    end
  end

  module BlackJack
    class Player
      attr_accessor :hand, :score, :name  # => nil
    end
  end
end

ttt_player = Games::TicTacToe::Player.new  # => #<Games::TicTacToe::Player:0x007fecb3b78020>
ttt_player.class                           # => Games::TicTacToe::Player

bj_player = Games::BlackJack::Player.new  # => #<Games::BlackJack::Player:0x007fecb3b73d90>
bj_player.class                           # => Games::BlackJack::Player

#Modules as mixins
#Composition
module Foodie
  def snubs_foods
    "this food is subpar"     # => "this food is subpar"
  end
end
module BeerSnob
  def drinks_beer
    "only if its micro, bro"  # => "only if its micro, bro"
  end

  def get_lunch
    "What do they have on tap?"  # => "What do they have on tap?"
  end
end

class Person
  def get_lunch
    "Yes! I'm so hungry"  # => "Yes! I'm so hungry"
  end
end

class Austinite < Person
  include Foodie          # => Austinite
  include BeerSnob        # => Austinite
end

class Portlandian < Person
  include BeerSnob          # => Portlandian
end

class SanFranciscan < Person
  include Foodie              # => SanFranciscan
end

Person.new.get_lunch  # => "Yes! I'm so hungry"
Person.ancestors      # => [Person, Object, JSON::Ext::Generator::GeneratorMethods::Object, Kernel, BasicObject]
me = Austinite.new    # => #<Austinite:0x007fecb3b73020>
me.get_lunch          # => "What do they have on tap?"
me.snubs_foods        # => "this food is subpar"
me.drinks_beer        # => "only if its micro, bro"
Austinite.ancestors   # => [Austinite, BeerSnob, Foodie, Person, Object, JSON::Ext::Generator::GeneratorMethods::Object, Kernel, BasicObject]


#module as library
module UI
  def self.print_line
    "-" * 20           # => "--------------------", "--------------------", "--------------------"
  end

  def self.in_box(msg)
    puts self.print_line  # => nil
    puts "| #{msg} |"     # => nil
    puts self.print_line  # => nil
  end
end

UI.print_line             # => "--------------------"
UI.in_box("hello world")  # => nil

# >> --------------------
# >> | hello world |
# >> --------------------
