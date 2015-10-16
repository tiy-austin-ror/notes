require_relative '../lib/registry'
require_relative '../lib/student'

puts "Welcome to Student Manager v0.0.1"
the_registry = Registry.new
the_registry.students = Array.new
the_registry.students.push(Student.new('Aaron', 'Lar'))
the_registry.students.push(Student.new('Travis', 'sw'))
the_registry.students.push(Student.new('Karly', '???'))
the_registry.students.push(Student.new('Sam', 'Kap'))
the_registry.students.push(Student.at_location('Austin', 'Justin', 'He'))

puts "ID --- First Name"
the_registry.students.each do |student|
  puts "#{student.id} -- #{student.first_name}"
end

print "Which student profile do you want? > "
response = gets.chomp.to_i

#find the student with the response id
#print that student
the_registry.students.each do |student|
  if student.id == response
    puts "ID: #{student.id}", "FULL_NAME: #{student.full_name}"
    puts "LOCATION: #{student.location}", "GPA: #{student.gpa}"
  end
end
