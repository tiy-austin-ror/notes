def fizzbuzz(n)
  return 'fizzbuzz' if (n % 15).zero?  # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, fa...
  return 'buzz'     if (n %  5).zero?  # => false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true, f...
  return 'fizz'     if (n %  3).zero?  # => false, false, true, false, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, true, ...
  n                                    # => 1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19, 22, 23, 26, 28, 29, 31, 32, 34, 37, 38, 41, 43, 44, 46, 47, 49, 52, 53, 56, 58, 59, 61, 62, 64, 67, 68, 71, 73, 74, 76, 77, 79, 82, 83, 86, 88, 89, 91, 92, 94, 97, 98
end

1.upto(100) do |n|  # => 1
  puts fizzbuzz(n)  # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, ni...
end                 # => 1

# >> 1
# >> 2
# >> fizz
# >> 4
# >> buzz
# >> fizz
# >> 7
# >> 8
# >> fizz
# >> buzz
# >> 11
# >> fizz
# >> 13
# >> 14
# >> fizzbuzz
# >> 16
# >> 17
# >> fizz
# >> 19
# >> buzz
# >> fizz
# >> 22
# >> 23
# >> fizz
# >> buzz
# >> 26
# >> fizz
# >> 28
# >> 29
# >> fizzbuzz
# >> 31
# >> 32
# >> fizz
# >> 34
# >> buzz
# >> fizz
# >> 37
# >> 38
# >> fizz
# >> buzz
# >> 41
# >> fizz
# >> 43
# >> 44
# >> fizzbuzz
# >> 46
# >> 47
# >> fizz
# >> 49
# >> buzz
# >> fizz
# >> 52
# >> 53
# >> fizz
# >> buzz
# >> 56
# >> fizz
# >> 58
# >> 59
# >> fizzbuzz
# >> 61
# >> 62
# >> fizz
# >> 64
# >> buzz
# >> fizz
# >> 67
# >> 68
# >> fizz
# >> buzz
# >> 71
# >> fizz
# >> 73
# >> 74
# >> fizzbuzz
# >> 76
# >> 77
# >> fizz
# >> 79
# >> buzz
# >> fizz
# >> 82
# >> 83
# >> fizz
# >> buzz
# >> 86
# >> fizz
# >> 88
# >> 89
# >> fizzbuzz
# >> 91
# >> 92
# >> fizz
# >> 94
# >> buzz
# >> fizz
# >> 97
# >> 98
# >> fizz
# >> buzz
