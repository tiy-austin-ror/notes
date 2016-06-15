# Data (Attributes, Properties): Number of Sides Maybe Later: Weighted? Weighted On What Sides
# Behavior: can be rolled.
class Dice

  def initialize(num_of_sides = 6)
    @num_of_sides = num_of_sides
  end

  #Example of a getter method
  def num_of_sides
    @num_of_sides
  end

  #Example of a setter method
  # def set_num_of_sides(new_sides)
  #   @num_of_sides = new_sides
  # end

  def roll
    rand(1..@num_of_sides)
  end
end

# Attributes: Number of Dice, Sides of Dice
# Behavior: roll, roll counts
class Roller

  def initialize(num_of_dice, sides_of_dice)
    @post_rolls = []
    @dice = []
    num_of_dice.times do
      @dice.push(Dice.new(sides_of_dice))
    end
  end

  def roll
    current_roll = @dice.map do |die|
      die.roll
    end
    @post_rolls.push(current_roll)

    return current_roll
  end
end

yahtzee = Roller.new(5, 6)
puts yahtzee.roll


# 10 minutes


# Build a Student class
# ------------------------
# Data: Name, Age, GPA, Course
# Behavior: do_homework, go_to_class
# -------------------------
# Bonus:
# I should be able to 'access' the name, age, and gpa.
# I should be able to 'change' the name and gpa.



class Student
  #Metaprogramming in Ruby
  attr_reader :age, :gpa # creates 'getter' methods for :age, and :gpa
  # attr_writer :name creates a 'setter method' for :name
  attr_accessor :name # creates a 'getter' and 'setter' method for :name

  def initialize(name, age, gpa, course)
    @name = name
    @age = age
    @gpa = gpa
    @course = course
  end

  # Replaced by 'attr_reader :name' found above
  # def name
  #   @name
  # end

  # def set_name(new_name)
  #   @name = new_name
  # end

  # def age
  #   @age
  # end

  def set_age(new_age)
    @age = new_age
  end

  # def gpa
  #   @gpa
  # end

  def set_gpa(new_gpa)
    @gpa = new_gpa
  end

  def do_homework
    "#{@name} did homework for #{@course}"
  end

  def go_to_class
    "#{@name} went to #{@course} where they have a #{@gpa} gpa"
  end
end
