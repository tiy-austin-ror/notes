require 'csv'

notes = []

if File.exists?('notes.csv')
  notes = CSV.read('notes.csv', headers: true)
end

notes.each do |note|
  puts "#{note["Message"].ljust(40)}#{note["Time"].rjust(5)}"
end

puts "----------------------------------"
print "> "
response = gets.chomp

CSV.open('notes.csv', 'ab', headers: true) do |csv|
  time = Time.now
  if time.hour < 12
    fancy_time = "#{time.hour}AM"
  else
    fancy_time = "#{time.hour}PM"
  end
  csv << [response, fancy_time]
end

puts
puts
puts "Goodbye"

exit
