#LSP
# Every subclass of a given class should be interchangable for its parent class.
class Rectangle
  attr_accessor :height, :width  # => nil
end

class Square < Rectangle
  def height
    @width
  end
end

s = Square.new  # => #<Square:0x007ff573773560>
s.width = 20    # => 20

r = Rectangle.new  # => #<Rectangle:0x007ff573773380>
r.width = 50       # => 50
r.height = 20      # => 20

def print_shape(square)
  print "-" * square.width      # => nil
  (square.height / 3).times do  # => 6
    puts "|"                    # => nil, nil, nil, nil, nil, nil
  end                           # => 6
  print "-" * square.width      # => nil
end

print_shape(r)  # => nil

# >> --------------------------------------------------|
# >> |
# >> |
# >> |
# >> |
# >> |
# >> --------------------------------------------------
