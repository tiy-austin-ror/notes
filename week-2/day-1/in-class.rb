def inspect_types_of_array(array)
  array.each do |elem|
    puts "#{elem.inspect.ljust(12, '-')}#{elem.class.to_s.rjust(12, '-')}"
  end
end


n = 0
while n <= 10 do
  puts n
  user_input = gets.chomp
  if user_input == "u"
    n += 1
  elsif user_input == "d"
    n -= 1
  end
end
