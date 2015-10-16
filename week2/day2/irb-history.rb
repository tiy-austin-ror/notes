"hello world, how are you doing? today!".split(" ")
"hello world, how are you doing? today!".split(",")
"hello world, how are you doing? today!".split(/[, ]/)
"hello world, how are you doing? today!".split(/[, !?]/)
"hello world, how are you doing? today!".split(/[, !?]/).select { |word| word.length > 0 }
"hello".match(/ello/)
"hello".match(/ddddd/)

if "hello".match(/ello/)
  puts "yes, string contains 'ello'"
end

response = gets.chomp
if response.match(/[yY]/)
  puts "exiting program!"
end

"Hello howr u doing?".gsub(/r u/, " are you")

"justin is going to replace all these vowels".gsub(/[aeiou]/, "*")

"holy shit, what?".gsub(/shit/, "****")
"holy shit, what?".gsub(/shit/, 4.times { %($ % * & ! @).sample }.join)
"holy shit, what?".gsub(/shit/, 4.times { %w($ % * & ! @).sample }.join)
"holy shit, what?".gsub(/shit/, (1..4).to_a.map { %w($ % * & ! @).sample }.join)
"holy shit".gsub(/shit/, nil)
"holy shit".gsub(/shit/, '')
"holy shit".delete(/shit/)
"holy shit".delete('shit')
"holy shit".delete('"shit"')
"holy shit".delete('(shit)')
%w( a b c d e f )
%w( a b c d e f ).map { |x| }
%w( a b c d e f ).map { |x| 5 }
%w( a b c d e f ).map { |x| x }
%w( a b c d e f ).map { |x| x.capitalize }
%w( a b c d e f ).map.with_index { |x, i| "#{i}-#{x.capitalize}" }
%w( a b c d e f ).map.with_index { |x, i| "#{i + 1}-#{x.capitalize}" }

def with_block
  puts "This is my method with block"
  yield
  puts "This is after the block"
end

with_block do
  puts "I AM in the BLOCK"
end
with_block { puts "hi"; puts "bye" }
with_block { puts 20 + 20 }

[1,2,3].each do |x|
  puts x + 1
end

def do_twice
  yield
  yield
end

do_twice do
  puts "hi"
end

do_twice { puts "hi" }

def wrap
  puts "-" * 15
  puts yield
  puts "-" * 15
end

wrap { "Hello World" }

def five_times
  yield(1)
  yield(2)
  yield(3)
  yield(4)
  yield(5)
end

five_times do |n|
  puts n
end

def do_times(n)
  n.times do |x|
    yield(x)
  end
end

do_times(5) do |n|
  puts n
end

require 'securerandom'
SecureRandom.methods - Object.methods
SecureRandom.hex
SecureRandom.uuid
SecureRandom.rand
SecureRandom.random_number(10)
exit
