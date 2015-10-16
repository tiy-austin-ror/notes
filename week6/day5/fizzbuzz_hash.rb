def fizzbuzz(n)
  {
    n      => (!(n % 5).zero? && !(n % 3).zero?),  # => true, false, false, false
    'fizz' => ((n % 3).zero? && !(n % 5).zero?),   # => false, true, false, false
    'buzz' => ((n % 5).zero? && !(n % 3).zero?),   # => false, false, true, false
    'fizzbuzz' => (n % 15).zero?                   # => false, false, false, true
  }.key(true)                                      # => 1, "fizz", "buzz", "fizzbuzz"
end

fizzbuzz(1)   # => 1
fizzbuzz(3)   # => "fizz"
fizzbuzz(5)   # => "buzz"
fizzbuzz(15)  # => "fizzbuzz"
