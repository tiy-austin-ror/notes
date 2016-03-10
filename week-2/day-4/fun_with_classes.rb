class Animal # The animal class is the ancestor of the cat class.
  def speak
    puts "*grrawrrrhhh*"
  end

  def walk
    puts "* walks *"
  end
end

class Cat < Animal #Cat is a subcass of Animal. It "inherits from" the Animal clas
  def speak
    puts "*Meowwwwwwwwwww*"
  end
end

class Kitten < Cat
  def speak
    puts "*mew*"
  end

  def walk
    super # This calls the method found in an ancestor's class
    puts "* stumble *"
  end
end

# Inheritance is used for specialization
# not for code sharing.

class User
  def open_door?
    true
  end

  def open_admin_door?
    false
  end
end

class Admin < User
  def open_admin_door?
    true
  end
end

class Player # All subclasses will have this same initializer
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cheater < Player
  def play
    puts "* plays ace *"
  end
end

# All of these classes have the same 'interface'
class ComputerPlayer < Player
  def play
    if rand > 0.5
      puts "* draw card *"
    else
      puts "* stay *"
    end
  end
end

class HumanPlayer < Player
  def play
    move = gets.chomp
    if move == "draw"
      puts "* draw card *"
    else
      puts "* stay *"
    end
  end
end
