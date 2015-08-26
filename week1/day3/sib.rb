
def square(n)
  n * n        # => 1, 4, 16, 36, 64, 100
end

[1, 2, 4, 6, 8].each do |num|  # => [1, 2, 4, 6, 8]
  square(num)                  # => 1, 4, 16, 36, 64
end                            # => [1, 2, 4, 6, 8]

response = gets.chomp

puts square(response.to_i)  # => nil

# >> 100
