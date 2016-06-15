class Animal
  def alive?
    true
  end

  def move
    "moves"
  end

  def speak
    "ggrwwwrrrrree"
  end
end

class Cat < Animal
  def move
    "prances"
  end
  def speak
    "Meow"
  end
end

class Kitten < Cat
  def speak
    "mew"
  end
end


class User
  def open_front_door
    "door opens"
  end

  def open_control_room_door
    "permission denied"
  end
end

class Admin < User
  def open_control_room_door
    "door opens"
  end
end
