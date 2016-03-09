class Student
  attr_accessor :name, :course, :gpa, :age

  def initialize(name = "No Name", course = "Unenrolled", gpa = 0.0, age = "TBD")
    @name = name
    @course = course
    @age = age
    @gpa = gpa
  end

  def display
    puts
    puts @name
    puts "Course | GPA | Age "
    print [@course, @gpa, @age].join(" | ")
    puts
  end
end
