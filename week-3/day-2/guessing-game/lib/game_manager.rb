class GameManager
  MIN = 1
  MAX = 100

  attr_reader :magic_num

  def initialize
    @magic_num = rand(MIN..MAX)
  end

  def correct_guess?(guess)
    guess == @magic_num
  end

  def too_high?(guess)
    guess > @magic_num
  end

  def too_low?(guess)
    guess < @magic_num
  end
end
