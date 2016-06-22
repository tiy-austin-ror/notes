class Student
  attr_reader :name, :course, :gpa
  def initialize(name, course = "Ruby on Rails", gpa = 4.0)
    @name = name
    @course = course
    @gpa = gpa
  end

  def display
    "#{name} \t #{course} \t #{gpa}"
  end
end
