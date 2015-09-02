#Decorator (or presenter)
# We should seperate out methods that are concerned with displaying the content of the class.
class Card
  attr_reader :suit, :value    # => nil
  def initialize(suit, value)
    @suit = suit               # => :hearts
    @value = value             # => 12
  end
end#Value object is a class with no behavior, it only holds values.


class CardDecorator
  attr_reader :card     # => nil
  def initialize(card)
    @card = card        # => #<Card:0x007ffcde9cb6d8 @suit=:hearts, @value=12>
  end

  def display
    #pretty printed output here
  end

  def display_value
    if @card.value == 12  # => true
      return "Queen"      # => "Queen"
    end
  end
end


card = Card.new(:hearts, 12)  # => #<Card:0x007ffcde9cb6d8 @suit=:hearts, @value=12>

decorated_card = CardDecorator.new(card)  # => #<CardDecorator:0x007ffcde9cb3b8 @card=#<Card:0x007ffcde9cb6d8 @suit=:hearts, @value=12>>

decorated_card.display_value  # => "Queen"



class User
  attr_accessor :first_name, :middle_name, :last_name, :age, :zip
end

class UserDecorator
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def first_last
    "#{@user.first_name} #{@user.last_name}"
  end
  ##.. insert 20 more name methods
end











