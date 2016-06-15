#
#  The Greeter Program
#
#  - Welcome the user
#  - Ask the user for their name
#     - Store the user's response as a variable
#  - Say hello to the user by name
#  - Allow the user to 'leave'
#  - Allow a new user to 'arrive'
#  - Allow the program to be quit

$user_name = ""

def start_program
  puts "Welcome to The Greeter Program!"
  puts
end

def greet_user
  puts "Hello! What is your name?"
  print "<please type your name here> "
  $user_name = gets.chomp

  puts "Hi, #{$user_name} it is nice to meet you!"
end

def get_user_input
  puts
  puts "What would you like to do?"
  print "<(a)rrive, (l)eave, or (q)uit> "

  gets.chomp
end

def goodbye_user
  puts "Goodbye, #{$user_name}!"
end

def unknown_input
  puts "Sorry, I didn't catch that?"
end


start_program
greet_user

loop do
  response = get_user_input
  system("clear")
  case response
  when 'a', 'arrive' then greet_user
  when 'l', 'leave'  then goodbye_user
  when 'q', 'quit', 'exit' then break
  else
    unknown_input
  end
end
