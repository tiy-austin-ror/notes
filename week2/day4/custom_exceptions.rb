class NotHowMathWorksError < StandardError
  def message
    "You need to review how math works, no strings allowed. (Except String Theory, but that is really physics)"
  end
end

def double(n)
  raise NotHowMathWorksError if n.is_a?(String)  # => nil, nil, nil, nil, nil, nil
  2 * n                                          # => 2, 6, 100, 0, 1000
end

[1, 3, 50, "fiibar", nil, 500].each do |number|   # => [1, 3, 50, "fiibar", nil, 500]
  begin
    double(number)                                # => 2, 6, 100, 0, 1000
  rescue NotHowMathWorksError => error
    puts "#{number.inspect} was not processable"  # => nil
  rescue TypeError => error
    puts "#{number.inspect} was illegal"          # => nil
  end                                             # => 2, 6, 100, nil, 0, 1000
end                                               # => [1, 3, 50, "fiibar", nil, 500]

# >> "fiibar" was not processable
# >> nil was illegal
