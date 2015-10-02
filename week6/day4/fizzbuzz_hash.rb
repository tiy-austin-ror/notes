def fizzbuzz(n)
  {
    n      => (!(n % 5).zero? && !(n % 3).zero?),  # => true, false, false, false
    'fizz' => ((n % 3).zero?),                     # => false, true, false, true
    'buzz' => ((n % 5).zero?),                     # => false, false, true, true
    'fizzbuzz' => (n % 15).zero?                   # => false, false, false, true
  }.key(true)                                      # => 1, "fizz", "buzz", "fizz"
end

fizzbuzz(1)   # => 1
fizzbuzz(3)   # => "fizz"
fizzbuzz(5)   # => "buzz"
fizzbuzz(15)  # => "fizz"
