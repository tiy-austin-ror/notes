$__student_id = 0

class Student
  attr_reader :id
  attr_accessor :name, :course

  def initialize(name, course, id = nil)
    @name = name
    @course = course

    if id.nil?
      @id = ($__student_id += 1)
    else
      @id = id
    end
  end

  def ==(other)
    if other.is_a?(Student)
      @id == other.id
    else
      false
    end
  end
end
