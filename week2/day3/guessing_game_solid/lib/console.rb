class Console < Display
  def get_int
    gets.to_i
  end

  def gets
    STDIN.gets.chomp
  end

  def puts(msgs)
    STDOUT.puts(msgs)
  end

  def print(msgs)
    STDOUT.print(msgs)
  end
end
