class IOAdapter

  def initialize(input, output)
    @input = input
    @output = output
  end

  def gets
    @input.gets
  end

  def print(msg)
    @output.print msg
  end

  def puts(msg)
    @output.puts msg
  end

end
