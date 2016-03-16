class Picker
  attr_reader :students

  def initialize(students)
    @students = students
  end

  def shuffle
    @students.shuffle!
  end

  def pick
    @students.sample
  end
end
