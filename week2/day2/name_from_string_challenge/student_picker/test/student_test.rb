require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/student'

class StudentTest < Minitest::Test
  def test_display_shows_all_student_info
    student = Student.new("Dane") # GIVEN

    expect = "Dane \t Ruby on Rails \t 4.0" # WHEN

    assert_equal expect, student.display # THEN
  end
end
