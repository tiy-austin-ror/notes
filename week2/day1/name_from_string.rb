require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

# Write two methods:
#
#   * `first_name`: given a name in string, return the first name.
#   * `last_name`: given a name in string, return the last name.

# WRITE YOUR CODE BELOW HERE.
def first_name(str)
  return "" if str.nil?
  words = str.split         # => ["Mason", "Matthews"], ["deadmou5"], ["John", "Quincy", "Adams"]
  if words.length == 1      # => false, true, false
    words.first             # => "deadmou5"
  else
    words[0..-2].join(' ')  # => "Mason", "John Quincy"
  end                       # => "Mason", "deadmou5", "John Quincy"
end

def last_name(str)
  return "" if str.nil?
  words = str.split    # => ["Mason", "Matthews"], ["deadmou5"], ["John", "Quincy", "Adams"]
  if words.length > 1  # => true, false, true
    words.last         # => "Matthews", "Adams"
  else
    ""                 # => ""
  end                  # => "Matthews", "", "Adams"
end
# WRITE YOUR CODE ABOVE HERE.

class StringSplitChallenge < MiniTest::Test
  def test_first_name
    assert_equal "Mason", first_name("Mason Matthews")  # => true
  end

  def test_last_name
    assert_equal "Matthews", last_name("Mason Matthews")  # => true
  end

  def test_one_word_name
    assert_equal "deadmou5", first_name("deadmou5")  # => true
    assert_equal "", last_name("deadmou5")           # => true
  end

  def test_three_word_name
    assert_equal "John Quincy", first_name("John Quincy Adams")  # => true
    assert_equal "Adams", last_name("John Quincy Adams")         # => true
  end

  def test_no_word_name
    assert_equal "", first_name("")
    assert_equal "", last_name("")
  end

  def test_nil_name
    assert_equal "", first_name(nil)
    assert_equal "", last_name(nil)
  end
end

# >> Run options: --seed 2036
# >>
# >> # Running:
# >>
# >> ....
# >>
# >> Finished in 0.000996s, 4016.7378 runs/s, 6025.1067 assertions/s.
# >>
# >> 4 runs, 6 assertions, 0 failures, 0 errors, 0 skips
