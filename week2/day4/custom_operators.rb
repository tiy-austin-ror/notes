class NotValidMeasurementType < StandardError
end

class Meter
  attr_reader :amount  # => nil

  def initialize(amount)
    @amount = amount      # => 4, 6, 10, 10, 0
  end

  def +(other)
    if other.is_a?(Meter)                  # => true, true, false
      new_amount = @amount + other.amount  # => 10, 10
      Meter.new(new_amount)                # => #<Meter:0x007fc991483cc8 @amount=10>, #<Meter:0x007fc991483868 @amount=10>
    else
      raise NotValidMeasurementType        # ~> NotValidMeasurementType: NotValidMeasurementType
    end                                    # => #<Meter:0x007fc991483cc8 @amount=10>, #<Meter:0x007fc991483868 @amount=10>
  end

  def -(other)
    new_amount = @amount - other.amount  # => -2
    new_amount = 0 if new_amount < 0     # => 0
    Meter.new(new_amount)                # => #<Meter:0x007fc991483408 @amount=0>
  end
end

m4 = Meter.new(4)  # => #<Meter:0x007fc991488278 @amount=4>
m6 = Meter.new(6)  # => #<Meter:0x007fc991488048 @amount=6>

m4.+(m6)  # => #<Meter:0x007fc991483cc8 @amount=10>
m4 + m6   # => #<Meter:0x007fc991483868 @amount=10>
m4 - m6   # => #<Meter:0x007fc991483408 @amount=0>

m4 + 10

# ~> NotValidMeasurementType
# ~> NotValidMeasurementType
# ~>
# ~> /Users/Justin/theironyard/aug/week2/day4/custom_operators.rb:16:in `+'
# ~> /Users/Justin/theironyard/aug/week2/day4/custom_operators.rb:34:in `<main>'
