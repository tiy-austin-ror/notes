module MeterExceptions
  class InvalidType < StandardError
    def message
      "The given type cannot be used, please provide a meter"
    end
  end
end

class Meter
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def Meter.convert(amount)
    if amount.is_a?(String)
      Meter.new(amount.to_i)
    elsif amount.is_a?(Inch)
      Meter.new(from_inch(amount))
    end
  end

  def Meter.from_inch(inches)
    inches.amount * 0.00254
  end

  def +(other)
    raise MeterExceptions::InvalidType unless other.is_a?(Fixnum) || other.is_a?(Meter)
    if other.is_a?(Fixnum)
      Meter.new(self.amount + other)
    else
      Meter.new(self.amount + other.amount)
    end
  end

  def -(other)
    raise MeterExceptions::InvalidType unless other.is_a?(Fixnum) || other.is_a?(Meter)
    if other.is_a?(Fixnum)
      Meter.new(self.amount - other)
    else
      Meter.new(self.amount - other.amount)
    end
  end

  def ==(other)
    raise MeterExceptions::InvalidType unless other.is_a?(Meter)
    self.amount == other.amount
  end

  def to_s
    "#{@amount}m"
  end
end
