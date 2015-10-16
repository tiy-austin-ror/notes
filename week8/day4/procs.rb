multiply_chain = -> (x, y, z) {
  x * y * z                      # => 16, 90
}                                # => #<Proc:0x007fb68ce2a618@/Users/Justin/theironyard/aug/week8/day4/procs.rb:1 (lambda)>

curried = multiply_chain.curry  # => #<Proc:0x007fb68ce2a4b0 (lambda)>

one_third_evaluated = curried.call(2)  # => #<Proc:0x007fb68ce2a2d0 (lambda)>
one_third_evaluated.call(2).call(4)    # => 16
one_third_evaluated.call(15).call(3)   # => 90

square = -> (n) { n * n }           # => #<Proc:0x007fb68ce29bc8@/Users/Justin/theironyard/aug/week8/day4/procs.rb:11 (lambda)>
double = -> (n) { n * 2 }           # => #<Proc:0x007fb68ce29ad8@/Users/Justin/theironyard/aug/week8/day4/procs.rb:12 (lambda)>
double.call(2)                      # => 4
[1, 2, 3, 4, 5, 6, 8].map(&:succ)   # => [2, 3, 4, 5, 6, 7, 9]
                     .map(&double)  # => [4, 6, 8, 10, 12, 14, 18]
                     .map(&square)  # => [16, 36, 64, 100, 144, 196, 324]
                     .map(&square)  # => [256, 1296, 4096, 10000, 20736, 38416, 104976]

%w(apple pear sushi taco cat).map(&:upcase)  # => ["APPLE", "PEAR", "SUSHI", "TACO", "CAT"]


def do_thing_with_callbacks(do_before, do_thing, do_after)
  do_before.call                                            # => nil
  do_thing.call                                             # => nil
  do_after.call                                             # => nil
end

do_thing_with_callbacks(
  -> { puts "before!" },
  -> { puts "hello world"},
  -> { puts "after!" })                             # => nil

# >> before!
# >> hello world
# >> after!
