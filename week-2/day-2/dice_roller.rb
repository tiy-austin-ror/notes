# When we run the program it will accept number of dice and number of sides on those dice

# Use cases: ruby dice_roller.rb <number_of_dice> <how_many_sides_on_dice>
# ruby dice_roller.rb
# > 4

# ruby dice_roller.rb 5
# > 3, 2, 4, 5, 2

# ruby dice_roller.rb 20 2
# > 17, 4

### Breakdown of steps of problem
# - Be able to generate a random number between two values ( rand(MIN..MAX) )
# - Be able to print that value to the terminal ( puts or print )
# - Be able to generate a set of random numbers

# die_rolls = Array.new
# 5.times do
#   die_rolls.push( rand(1..10) )
# end
# die_rolls

# - Be able to accept arguments from the command line (?) ( ARGV )
class Die
  def initialize(sides = 6)
    @sides = sides
  end

  def roll
    rand(1..@sides)
  end
end

class DiceRoller
  def initialize(number_of_dice, number_of_sides)
    if number_of_dice.zero?
      @number_of_dice = 1
    else
      @number_of_dice = number_of_dice
    end
    if number_of_sides.zero?
      @number_of_sides = 6
    else
      @number_of_sides = number_of_sides
    end
  end

  def run
    @number_of_dice.times do
      print " | "
      print Die.new(@number_of_sides).roll
    end
    puts
  end
end

dice_roller = DiceRoller.new(ARGV[0].to_i, ARGV[1].to_i)
dice_roller.run
