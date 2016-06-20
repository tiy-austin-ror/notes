#Fun with enums
class Student
  attr_accessor :name, :gpa

  def initialize(name)
    @name = name
    @gpa = rand(1..4)
  end
end

student_body = [
  Student.new("Karly"),
  Student.new("Sam"),
  Student.new("Jess"),
  Student.new("Quincy"),
  Student.new("Justin"),
  Student.new("Dane"),
  Student.new("Dana")
]
#
# student_body.map do |s|
#   s.name
# end
#
student_names = []
student_body.each do |student|
  student_names.push(student.name)
end
puts student_names

#
# student_body.select do |s|
#   s.gpa > 2
# end
#
high_gpa_students = []
student_body.each do |student|
  if student.gpa > 2
    high_gpa_students.push(student)
  end
end
puts high_gpa_students


# student_body.reject do |s|
#   s.name.length >= 4
# end
# Results should be these students -> Sam, Jess, Dane, Dana
student_set = Array.new
student_body.each do |student|
  unless student.name.length >= 4
    student_set.push(student)
  end
end
puts student_set

# student_body.any? do |s|
#   s.gpa >= 4
# end
# Results should be -> true
is_true = false
student_body.each do |student|
  if student.gpa >= 4
    is_true = true
    break
  end
end
puts is_true

# student_body.all? do |s|
#   s.gpa > 0
# end
# Results should be -> true
is_true = true
student_body.each do |student|
  unless student.gpa > 0
    is_true = false
    break
  end
end
puts is_true


#
# student_body.partition do |student|
#   student.name.length > 3
# end
long_name_students = []
short_name_students = []
student_body.each do |student|
  if student.name.length > 3
    long_name_students << student
  else
    short_name_students << student
  end
end
puts long_name_students, short_name_students






# Bonus:
# student_body.group_by do |s|
#    s.gpa
# end
# Results should be ->
#  A big hash
