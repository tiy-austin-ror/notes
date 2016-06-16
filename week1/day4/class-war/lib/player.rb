class Player
  attr_reader :name
  attr_accessor :card, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def show_card
    "#{@name} has #{@card}"
  end

  def show_score
    "#{@name} has #{@score}"
  end
end
