puts "hello!"

print "What is your name again? > "
name = gets.chomp
# puts "DEBUG: #{name.inspect}"
if name.downcase == "justin"
  puts "Oh, you're me."
else
  puts "Oh, hey #{name.downcase.capitalize} I totally remember you..."
end # finish of if name == 'justin'
