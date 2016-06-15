MIN = 0
MAX = 100 # Constants

def greeter(name) # Method Definition
  if name.is_a?(String)
    puts "Hello #{name.upcase}!"
  end
end

greeter("Dane")
greeter(189898)
greeter({})
greeter([])

puts "The Minimum amount is #{MIN} and the Maximum amount is #{MAX}"

# Yay ranges!
(1..10).each do |n|
  puts n
end
