require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/picker'
require_relative '../lib/student'

class PickerTest < MiniTest::Test
  def test_holds_students
    picker = Picker.new([
      Student.new("BoB"),
      Student.new("Jane"),
      Student.new("Joe"),
      Student.new("8809"),
    ])
    expected = [
      Student.new("BoB"),
      Student.new("Jane"),
      Student.new("Joe"),
      Student.new("8809"),
    ]
    assert_equal(expected, picker.students)
  end

  def test_shuffle_students
    picker = Picker.new([ Student.new("BoB") ])
    assert_respond_to(picker, :shuffle)
  end

  def test_picks_student
    bob = Student.new("BoB")

    picker = Picker.new([bob])

    assert_respond_to(picker, :pick)

    assert_equal(bob, picker.pick)
  end
end
