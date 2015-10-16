class Reader
  def initialize(input = STDIN)
    @input = input
  end

  def gets
    @input.gets.chomp
  end
end
