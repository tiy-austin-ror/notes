def get_response(message)
  puts message
  print "> "
  gets.chomp
end

def get_number(message)
  get_response(message).to_i
end

def print_progress
  puts "Calculating..."

  5.times do
    puts ["...", "...", "...", "...thinking...", "...carry the 1..."].sample
    sleep 0.5
  end
end

def mode_activate(mode_name, speak_message = false)
  message = "#{mode_name} Mode Activated"
  puts message
  if speak_message
    `say '#{message}'`
  end
  puts "-" * 20
end

def print_answer(answer)
  puts "I think your answer is: "
  puts answer
end

def addition_mode
  mode_activate("Addition")
  first_num  = get_number("What is the first number to add?")
  second_num = get_number("What is the second number to be added to #{first_num}?")
  print_progress
  print_answer(first_num + second_num)
end

def subtraction_mode
  mode_activate("Subtraction")
  first_num  = get_number( "What is the first number to subtract from?")
  second_num = get_number("What is the number to be subtracted from #{first_num}?")
  print_progress
  print_answer(first_num - second_num)
end

def welcome
  puts "CALCVULORE V0.202.20p2382943"
end

def start
  welcome
  loop do
    choice = get_response("Would you like to (A)dd or (S)ubstract! or (Q)uit")
    case choice.upcase
    when "A"
      addition_mode
    when "S"
      subtraction_mode
    when "H"
      puts "Pick A or S to do maths"
    when "Q"
      puts "Goodbye!"
      exit
    else
      puts "Not a valid input"
    end
  end
end

start
