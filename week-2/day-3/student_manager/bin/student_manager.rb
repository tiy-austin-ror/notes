require 'pry' # We use 'require' when we are referencing a gem
require_relative '../lib/student' # To use our student class, we need access to that file, require_relative points to where the file is found in relative to this file

class StudentManager

  def initialize # Our initialize function runs when a new intance of our class is created.
    @students = Array.new
    @students.push(Student.new)
    @students.push(Student.new("Aaron", "Front End", "4.0", "99"))

    # binding.pry # Stops the program from running and opens PRY. Useful for debugging
  end

  def print_menu # We moved all these puts statements into their own method to clean up the code in our start method.
    puts "Welcome to Student Manager"
    puts "-" * 20
    puts "1 - Display a student (DISABLED)"
    puts "2 - Add a student"
    puts "3 - Remove a student (DISABLED)"
    puts "Q - Quit (DISABLED)"
  end

  def start
    loop do
      system('clear') #This will cause the terminal screen to "clear" all content so you're always printing in the top left corner.
      print_menu
      response = get_response

      case response.to_i
      when 1 then print_students
      when 2 then add_student
      when 3 then puts "Option is disabled"
      else
        puts "Goodbye"
        exit # This quits the program.
      end
    end
  end

  def print_students
    system('clear')
    puts "Displaying all students"
    puts "-" * 20

    @students.each { |student| student.display } # We want the student class to handle how it is displayed. We are delegating that responsibility.

    puts
    get_response("Press Enter to return") # If we dont have this, the program immediately clears the screen and we never see the students.
  end

  def add_student
    system('clear')
    puts "Adding a new student"
    puts "-" * 20
    puts "We will need the Student's Name, Course, GPA, and Age."

    new_student = Student.new # Creating a new instance

    new_student.name = get_response("Name") #Grab the input from the user and add it to the attribute on the student.
    new_student.course = get_response("Course")
    new_student.gpa = get_response("GPA")
    new_student.age = get_response("Age")

    @students.push(new_student) # Add our newly created (and filled with data) student into the students array.
  end

  def get_response(prompt = "")
    print "#{prompt} ▶ "
    gets.chomp
  end

end


sm = StudentManager.new
sm.start


# When I run SM I should get 3 options
# 1 - Display all students
# 2 - Add a new student
# 3 - Remove a student
# Q - Quit
