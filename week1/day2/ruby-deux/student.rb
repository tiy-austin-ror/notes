# Students should have names
# Students should have behavior of doing homework
# Data: name
# Behavior: do_homework

class Student
  def initialize(name)
    @name = name
  end

  def do_homework
    puts "#{@name} writes some awesome code."
  end
end

[Student.new("dane"),
 Student.new("mike"),
 Student.new("ryan")].each do |student|
  student.do_homework
end
