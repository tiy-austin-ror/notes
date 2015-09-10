require_relative "../db/setup"
require_relative '../lib/all'


puts "Would you like to start a new game (1) or restart (2)?"

response = gets.chomp.to_i

if response == 1
  game = Game.new
elsif response == 2
  games = Game.all

  puts "ID  -  TURN"
  games.each do |g|
    puts "#{g.id} - #{g.turn}"
  end
  puts "Choose which game you want."
  response = gets.chomp

  exit if response == '' || response == '@'

  game = Game.find(response)
end

guessing_game = GuessingGame.new(game)
guessing_game.start

