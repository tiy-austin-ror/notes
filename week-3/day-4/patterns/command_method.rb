def run # Command or Sgt. Method
  say_hello
  parse_input
  display_options
  say_goodbye
end

def say_hello
  puts "hi"
end

def display_options
  "Sorry, no options today"
end

def parse_input
  i = gets.chomp
end

def say_goodbye
  puts "bye"
end
