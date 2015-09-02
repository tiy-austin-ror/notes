class Printer
  def initialize(output = STDOUT)
    @output = output               # => #<ArrayPrinter:0x007fd110bf36d0 @msgs=["first message"]>
  end

  def puts(msg)
    @output.puts(msg)  # => ["first message", "hello world"]
  end

  def print(msg)
    @output.print(msg)
  end
end

class SayPrinter
  def puts(msg)
    `say #{msg}`
  end
  def print(msg)
    `say #{msg}`
  end
end

class ArrayPrinter
  def initialize
    @msgs = []      # => []
  end
  def puts(msg)
    @msgs << msg    # => ["first message"], ["first message", "hello world"]
  end
  def print(msg)
    @msgs << msg
  end
end


class Game
  def initialize(printer = ArrayPrinter.new)
    @io = Printer.new(printer)
  end

  def run
    @io.puts "Welcome to the game"
    # do the game
    @io.puts "Thanks for playing!"
  end
end

Game.new.run


# ap = ArrayPrinter.new    # => #<ArrayPrinter:0x007fd110bf36d0 @msgs=[]>
# ap.puts "first message"  # => ["first message"]
# ap                       # => #<ArrayPrinter:0x007fd110bf36d0 @msgs=["first message"]>


# printer = Printer.new(ap)  # => #<Printer:0x007fd110bf3108 @output=#<ArrayPrinter:0x007fd110bf36d0 @msgs=["first message"]>>

# printer.puts "hello world"  # => ["first message", "hello world"]
