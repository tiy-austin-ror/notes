require 'test/unit'
# Directions:
#
# Write a series of methods which use the
#  (.any, .all, .map, .select, .reject, and .reduce)
# methods in Enumerable.
# In this challenge, names longer than 5 characters are # considered long.


# WRITE YOUR CODE BELOW HERE.

def has_even?(arr)
  # I need to:
  # - Loop through every element in the array
  # - Check each element to see if it is an even number (2.even?)
  # - Return 'true' from the entire method if it is
  # - If no element is found to be even, return 'false' from the method
  did_i_find_an_even = false

  arr.each do |number|
    if number.even?
      did_i_find_an_even = true
    end
  end

  #return did_i_find_an_even

  # Enum version
  arr.any? { |n| n.even? }
end

def all_short?(arr)
  # I need to:
  # - Iterate over every element in the area.
  # - Check each element to see if its length is less than 5
  # - Return true if they are all less than 5 characters
  # - Return false if one ore more is longer than 5 characters
  are_all_words_short = true

  arr.each do |word|
    if word.length > 5
      are_all_words_short = false
    end
  end

  #return are_all_words_short

  # Enum version
  arr.all? { |word| word.length < 5 }
end

def squares(arr)
  # I needed to:
  # - Create a new array to store my return values
  # - Iterate over every element in the area
  # - Store the new value of the origianl value squared
  # - Return the new array
  squared_values = []

  arr.each do |nums|
    squared_values.push(nums ** 2)
  end

  # return squared_values

  # Enum version
  arr.map { |n| n ** 2 }
end

def just_short(arr)
  # I need to:
  # - Create a new array to store my return values
  # - Iterate over every element in the area
  # - Store only the elements that length is less than 5
  # - Return the new array
  short_names = []

  arr.each do |word|
    if word.length < 5
      short_names.push(word)
    end
  end

  # return short_names

  arr.select { |word| word.length < 5 }
end

def no_long(arr)
  # I need to:
  # - Create a new array to store my return values
  # - Iterate over every element in the area
  # - Store only the elements that length is less than 5
  # - Return the new array
  short_names = []

  arr.each do |word|
    if word.length < 5
      short_names.push(word)
    end
  end

  # return short_names

  arr.reject { |word| word.length > 5 }
end

def sum(arr)
  # Add up every element in the array
  total = 0
  arr.each do |num|
    total += num
  end
  total

  # arr.reduce(0) { |acc, n| acc += n }
  arr.reduce(:+)
end

def product(arr)
  # Multiple every element in the array
  total = 1
  arr.each do |num|
    total *= num
  end
  total

  arr.reduce(:*)
end

# WRITE YOUR CODE ABOVE HERE.

class EnumerableChallenge < Test::Unit::TestCase
  NOT_TRUE_MSG  = 'Method should have returned TRUE and did not'
  NOT_FALSE_MSG = 'Method should have returned FALSE and did not'
  NOT_EQUAL_MSG = 'Method should have returned the expected value, but returned something else instead. Check your return value.'

  def test_any
    assert has_even?([2, 3, 4, 5, 6]),    NOT_TRUE_MSG
    assert has_even?([-2, 3, -4, 5, -6]), NOT_TRUE_MSG
    refute has_even?([3, 5]),             NOT_FALSE_MSG
    refute has_even?([-3, -5]),           NOT_FALSE_MSG
  end

# Uncomment each test after the one before it passes
 def test_all
   assert all_short?(["Amy", "Bob", "Cam"]),       NOT_TRUE_MSG
   assert all_short?(["Zeke", "Yoo", "Xod"]),      NOT_TRUE_MSG
   refute all_short?(["Amy", "Bob", "Cammie"]),    NOT_FALSE_MSG
   refute all_short?(["Zachary", "Yoo", "Xod"]),   NOT_FALSE_MSG
 end

  def test_map
    assert_equal [1, 4, 9], squares([1, 2, 3]),    NOT_EQUAL_MSG
    assert_equal [16, 36, 81], squares([4, 6, 9]), NOT_EQUAL_MSG
  end
#
  def test_select
    assert_equal ["Amy", "Bob", "Cam"], just_short(["Amy", "Bob", "Cam"]),   NOT_EQUAL_MSG
    assert_equal ["Zeke", "Yoo", "Xod"], just_short(["Zeke", "Yoo", "Xod"]), NOT_EQUAL_MSG
    assert_equal ["Amy", "Bob"], just_short(["Amy", "Bob", "Cammie"]),       NOT_EQUAL_MSG
    assert_equal ["Yoo", "Xod"], just_short(["Zachary", "Yoo", "Xod"]),      NOT_EQUAL_MSG
  end
#
 def test_reject
   assert_equal ["Amy", "Bob", "Cam"], no_long(["Amy", "Bob", "Cam"]),   NOT_EQUAL_MSG
   assert_equal ["Zeke", "Yoo", "Xod"], no_long(["Zeke", "Yoo", "Xod"]), NOT_EQUAL_MSG
   assert_equal ["Amy", "Bob"], no_long(["Amy", "Bob", "Cammie"]),       NOT_EQUAL_MSG
   assert_equal ["Yoo", "Xod"], no_long(["Zachary", "Yoo", "Xod"]),      NOT_EQUAL_MSG
 end
#
 def test_reduce_sum
   assert_equal 3, sum([1, 1, 1]),     NOT_EQUAL_MSG
   assert_equal 18, sum([3, 5, 10]),   NOT_EQUAL_MSG
   assert_equal 31, sum([18, 13, 0]),  NOT_EQUAL_MSG
   assert_equal 7, sum([2, 3, 2]),     NOT_EQUAL_MSG
 end
#
 def test_reduce_product
   assert_equal 1, product([1, 1, 1]),    NOT_EQUAL_MSG
   assert_equal 150, product([3, 5, 10]), NOT_EQUAL_MSG
   assert_equal 0, product([18, 13, 0]),  NOT_EQUAL_MSG
   assert_equal 12, product([2, 3, 2]),   NOT_EQUAL_MSG
 end
end
