#!/usr/bin/env ruby
# ^ Tells the shell that this is a ruby file
require 'securerandom'  # => true

class StudentPicker
  attr_reader :students  # => nil

  def initialize
    @students = []  # => []
  end

  def add_student(student)
    if @students.include?(student.capitalize)  # => false, false, false, false, false, false, false, false, false
      puts "Student already taken #{student}"
    else
      @students << student.capitalize          # => ["Adam"], ["Adam", "Mike"], ["Adam", "Mike", "Ryan-y"], ["Adam", "Mike", "Ryan-y", "Ryan-p"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik", "Michelle"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik", "Michelle", "Anisha"]
    end                                        # => ["Adam"], ["Adam", "Mike"], ["Adam", "Mike", "Ryan-y"], ["Adam", "Mike", "Ryan-y", "Ryan-p"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik", "Michelle"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik", "Michelle", "Anisha"]
  end

  def pick_student
    @students[SecureRandom.random_number(@students.length)]  # => "Ryan-p"
  end

end

student_picker = StudentPicker.new  # => #<StudentPicker:0x007f9e5f012cc8 @students=[]>

%w(adam mike ryan-y ryan-p chris travis erik michelle anisha).each do |name|  # => ["adam", "mike", "ryan-y", "ryan-p", "chris", "travis", "erik", "michelle", "anisha"]
  student_picker.add_student(name)                                            # => ["Adam"], ["Adam", "Mike"], ["Adam", "Mike", "Ryan-y"], ["Adam", "Mike", "Ryan-y", "Ryan-p"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik", "Michelle"], ["Adam", "Mike", "Ryan-y", "Ryan-p", "Chris", "Travis", "Erik", "Michelle"...
end                                                                           # => ["adam", "mike", "ryan-y", "ryan-p", "chris", "travis", "erik", "michelle", "anisha"]

puts student_picker.pick_student     # => "Ryan-p"
student_picker.students.length  # => 9
