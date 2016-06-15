# Assign a secret number
# Prompt the user to guess
# Store the user's guess
# Check if the guess is equal to the secret number
# Check if the guess is too low.
# Check if the guess is too high.
# Loop if they got it wrong
# Finally: They can give up by quitting.

SUPER_SECRET_NUMBER = rand(1..100)

loop do
  puts "You should guess a number 1 through 100; 0 to quit"
  guess = gets.chomp.to_i

  exit if guess.zero?

  if guess == SUPER_SECRET_NUMBER
    puts "You win! That is correct."
    exit
  elsif guess < SUPER_SECRET_NUMBER
    puts "That is too low."
  elsif guess > SUPER_SECRET_NUMBER
    puts "That is too high."
  end
end
