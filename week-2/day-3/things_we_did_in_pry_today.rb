me
me.name
me.course
me.gpa
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me
me.name
me.get_name
me.course
me.gpa
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.get_course
me.get_gpa
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me
me.name
me.get_name
me.set_name("Aaron")
me
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.get_name
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
exit
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.get_name
me.name
me.set_name
me.name = "Aaron"
me
me.methods - Object.methods
me.methods
def name*(foo)
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.tardy
me.tardy = true
me.tardy
me
exit
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me = Student.new
me.name = "justin"
me.course = "foobar"
me.tardy = true
me.gpa = 0
me
0.1 + 0.2
(0.1 + 0.2).round(3)
(0.1 + 0.2).round(2)
(0.1 + 0.2).round(1)
(0.1 + 0.2).round(3)
load 'student.rb'
student_names = %w(Aaron Abby Jess Justin Travis Karly) 
students = student_names.map do |name|
  Student.new(name, "Ruby")
end
students
student_names
students.map { |student| student.name }
students.select { |student| student.name.length > 5 }
students.reject { |student| student.name.length > 5 }
students.partition { |student| student.name.length > 5 }
students.chunk { |student| student.name }
students.group_by { |student| student.name }
students.group_by { |student| student.name.length }
students.map! do |student|
  student.gpa = rand( (1.0)..(4.0) )
end
students
students = student_names.map do |name|
  Student.new(name, ["ruby", "front end", "design"].sample, rand((1.0)..(4.0)).round(2))
end
students
students.group_by { |student| student.course }
students.map { |x| x.gpa } 
students.map { |x| x.gpa }.average
students.reduce(:+)
students.map { |s| s.gpa }.reduce(:+)
students.map { |s| s.gpa }.reduce(:+) / students.count
students.group_by { |student| student.course }
students.group_by { |student| student.course }.
map do |course_name, students_in_course|
  students_in_course.map { |s| s.gpa }.reduce(:+) / students.count
end
students.group_by { |student| student.course }.
map do |course_name, students_in_course|
  students_in_course.map { |s| s.gpa }.reduce(:+) / students_in_course.count
end
students.group_by { |student| student.course }.
map do |course_name, students_in_course|
  [course_name,  students_in_course.map { |s| s.gpa }.reduce(:+) / students_in_course.count]
end
exit
