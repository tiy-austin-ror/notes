class Student
  attr_reader :course
  attr_accessor :name, :gpa, :tardy
  def initialize(name, course, gpa = 0.0)
    @name = name
    @course = course
    @gpa = gpa
  end
end
