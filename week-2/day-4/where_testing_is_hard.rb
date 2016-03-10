# Loops

def five_times(name)
  # How do test loop?
  5.times do
    name
  end
  # What is output?
end

#To test logic with a loop. Move all logic into methods
# outside the loop and test them in isolation.

# Puts (output)
def display
  "Welcome to the jungle \n ---------------------"
end

def render(str)
  puts str #Why would you test this? It does nothing
end

def test_display
  expected_output = "Welcome to the jungle \n ---------------------"
  actual_output = display
  puts expected_output == actual_output
end
test_display


# State
def say_hello_to_user
  "Hello #{@user}"
end

def test_say_hello_to_user
  expected = "Hello Aaron"
  @user = "Aaron"
  actual = say_hello_to_user

  if expected == actual
    puts "Passed!"
  else
    puts "Failed"
    puts expected.inspect, actual.inspect
  end
end
test_say_hello_to_user


# Randomness
