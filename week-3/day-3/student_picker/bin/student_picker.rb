require_relative '../lib/picker'
require_relative '../lib/student'

class StudentPicker
  def run
    picker = Picker.new([
      Student.new("Bob"),
      Student.new("Jane"),
      Student.new("Joe"),
      Student.new("8809"),
    ])

    puts picker.students
    gets.chomp

    puts picker.pick
  end
end

StudentPicker.new.run
