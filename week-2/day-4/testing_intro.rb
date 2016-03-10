
# At the most basic level, Testing is writing code that
# runs your code and "asserts" that it does what you
# expect it to do, what you said it should do.

def excited_name(name)
  upper_name = name.upcase
  "#{upper_name}!"
end


def test_excited_name
  actual_name1 = excited_name("justin")
  actual_name2 = excited_name("jeb")
  actual_name3 = excited_name("HELOO!")
  actual_name4 = excited_name("44")

  puts actual_name1 == "JUSTIN!"
  puts actual_name2 == "JEB!"
  puts actual_name3 == "HELOO!!"
  puts actual_name4 == "44!"
end
test_excited_name


# We could write our own method to make testing easier for us
# and to give us better output.
def should_be_equal(expectation, actual)
  if expectation == actual
    puts "Pass"
  else
    puts "(Failed)"
    puts "Expected: #{expectation.inspect}"
    puts "Actual: #{actual.inspect}"
    unless expectation.class == actual.class
      puts "Expected value to be a '#{expectation.class}', but was '#{actual.class}'"
    end
  end
end

# Now that I have this method to help me with my tests, I can write more tests faster
# and understand the failure of those tests.

def fizz(n)
  if fizz % 3 == 0
    "fizz"
  else
    n
  end
end

def test_fizz
  should_be_equal("fizz", 3)
  should_be_equal(2, 2)
end

test_fizz
