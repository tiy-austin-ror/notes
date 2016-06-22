class Say < Display
  def get_int
    gets.to_i
  end

  def gets
    STDIN.gets.chomp
  end

  def puts(msg)
    `say #{msg}`
  end

  def print(msg)
    `say #{msg}`
  end
end
