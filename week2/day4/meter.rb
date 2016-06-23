class InvalidUnit < StandardError
  def message
    "other is not the correct unit for conversion, cannot be added or subtracted."
  end
end

class NaN < StandardError
  def message
    "This is not a number"
  end
end

class Meter
  FOOT_CONVERSION = 0.3048
  attr_reader :value

  def initialize(value)
    if value < 0
      STDERR.puts("WARNING: You tried to create a negative meter. Meters cannot contain negative values.")
      @value = value.abs
    else
      @value = value
    end
  end

  def +(other)
    raise InvalidUnit unless other.is_a?(Meter) || other.is_a?(Foot)
    if other.is_a?(Foot)
      final_value = (other.value * FOOT_CONVERSION) + @value
      Meter.new(final_value)
    else
      Meter.new(@value + other.value)
    end
  end

  def -(other)
    raise InvalidUnit unless other.is_a?(Meter)
    final_value = @value - other.value
    if final_value < 0
      STDERR.puts("WARNING: Final Output was going to be #{final_value}. Cannot have negative Meters.")
      Meter.new(0)
    else
      Meter.new(final_value)
    end
  end

  def *(other)
    raise NaN unless other.is_a?(Fixnum) || other.is_a?(Float)
    Meter.new(@value * other)
  end

  def /(other)
    raise NaN unless other.is_a?(Fixnum) || other.is_a?(Float)
    Meter.new(@value / other)
  end


  def ==(other)
    return false unless other.is_a?(Meter)
    @value == other.value
  end
end

class Foot
  METER_CONVERSION = 3.28084
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def +(other)
    raise InvalidUnit unless other.is_a?(Foot) || other.is_a?(Meter)
    if other.is_a?(Meter)
      Foot.new(other.value)
    else
      Foot.new(@value + other.value)
    end
  end

  def -(other)
    raise InvalidUnit unless other.is_a?(Foot)
    Foot.new(@value - other.value)
  end

  def ==(other)
    return false unless other.is_a?(Foot)
    @value == other.value
  end
end
