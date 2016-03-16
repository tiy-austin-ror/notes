require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/student'

class StudentTest < MiniTest::Test
  def test_students_have_names
    student = Student.new("Bob")
    student2 = Student.new("Jane")
    student3 = Student.new("8889")

    assert_equal("Bob", student.name)
    assert_equal("Jane", student2.name)
    assert_equal("8889", student3.name)
  end

  def test_students_are_only_different_by_name
    student1 = Student.new("Jane")
    student2 = Student.new("Jane")

    assert_equal(student1, student2)
    refute_equal(student1, Student.new("Bob"))
  end
end
