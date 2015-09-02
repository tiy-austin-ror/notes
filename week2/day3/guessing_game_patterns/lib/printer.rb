class Printer
  def initialize(output = STDOUT)
    @output = output
  end

  def puts(msg)
    @output.puts(msg)
  end

  def print(msg)
    @output.print(msg)
  end
end
