#Our card class here is an example of a Value Object
# It has no behavior associated with it.
# It is a container for our values
# It is much better to be able to say

# card = Card.new(10, :hearts)
# card.suit #=> :hearts

# than to have just an array

# card = [10, :hearts]
# card[1] #=> :hearts

#Our card class here is an example of a Value Object
class Card
  attr_accessor :value, :suit
  def initialize(value, suit)
    @value = value
    @suit  = suit
  end
end

module Decorators
  class Card
    def initialize(card)
      @card = card
    end

    def suit
      case @card.suit
      when :hearts   then '♥'
      when :diamonds then '♦'
      when :clubs    then '♣'
      when :spades   then '♠'
    end

    def value
      return "J" if @card.value == 11
      return "Q" if @card.value == 12
      return "K" if @card.value == 13
      return "A" if @card.value == 14
      @card.value
    end

    def display
     %q{ ______
        |#{@card.value}     |
        |      |
        |   #{@card.suit}   |
        |      |
        |_____#{card.value}| }
    end
  end
end


#How to use a decorator:
# First you get your object, then you get your decorator with it.
@card = Card.new(11, :hearts)
@card_decorator = Decorators::Card.new(@card)

puts @card_decorator.print
