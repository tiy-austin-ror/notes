# Guard Clause
# Validate input of method and return an immediate response to invalid input.

def say_hi(msg)
  return if msg.nil?           # => false, false, true, false
  return if msg.is_a?(Fixnum)  # => true, false, false
  return if msg.length < 1     # => true, false

  puts msg  # => nil
end

say_hi(9)             # => nil
say_hi('')            # => nil
say_hi(nil)           # => nil
say_hi("hello you!")  # => nil

# ruby guard

def print_name(name)
  name ||= 'no name'  # => "no name", "justin"
  puts name           # => nil, nil
end

print_name(nil)       # => nil
print_name('justin')  # => nil

# >> hello you!
# >> no name
# >> justin
