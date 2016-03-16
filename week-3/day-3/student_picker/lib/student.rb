class Student
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def ==(other_student)
    return if other_student.nil?
    return if other_student.is_a?(Student)

    if other_student.name == @name
      true
    else
      false
    end
  end

  def to_s
    @name
  end
end
