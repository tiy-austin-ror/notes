require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

# Write two classes which inherit from the Vehicle class below.  You will also
# need to add a method to the Vehicle class during this challenge.

class Vehicle
  def initialize(make, model)
    @make = make               # => "Nissan", "Honda", "Nissan", "Honda", "Nissan", "Honda", "Nissan", "Honda", "Can-Am"
    @model = model             # => "Leaf", "CTX700N", "Leaf", "CTX700N", "Leaf", "CTX700N", "Leaf", "CTX700N", "Spyder"
  end

  def number_of_gears
    4                  # => 4
  end

  def number_of_tires
    4                  # => 4
  end

  def describe
    "This is a #{@make} #{@model}"  # => "This is a Nissan Leaf", "This is a Honda CTX700N"
  end
end

class ElectricCar < Vehicle
  def number_of_gears
    1                        # => 1
  end
end
class Motorcycle < Vehicle
  def number_of_tires
    2                        # => 2
  end
end

class TrikeMotorcycle < Motorcycle
  def number_of_tires
    3                               # => 3
  end
end

# WRITE YOUR CODE HERE.

class InheritanceChallenge < MiniTest::Test

  def test_classes_exist
    assert ElectricCar    # => true
    assert Motorcycle     # => true
  end

  def test_classes_inherit
    assert_equal Vehicle, ElectricCar.superclass  # => true
    assert_equal Vehicle, Motorcycle.superclass   # => true
  end

  def test_initializer_takes_make_and_model
    assert ElectricCar.new("Nissan", "Leaf")  # => true
    assert Vehicle.new("Honda", "CTX700N")    # => true
  end

  def test_describe
    assert_equal "This is a Nissan Leaf", ElectricCar.new("Nissan", "Leaf").describe     # => true
    assert_equal "This is a Honda CTX700N", Motorcycle.new("Honda", "CTX700N").describe  # => true
  end

  def test_number_of_tires
    assert_equal 4, ElectricCar.new("Nissan", "Leaf").number_of_tires   # => true
    assert_equal 2, Motorcycle.new("Honda", "CTX700N").number_of_tires  # => true
  end

  def test_number_of_gears
    assert_equal 1, ElectricCar.new("Nissan", "Leaf").number_of_gears   # => true
    assert_equal 4, Motorcycle.new("Honda", "CTX700N").number_of_gears  # => true
  end

  def test_trike
    assert TrikeMotorcycle                                                   # => true
    assert_equal Vehicle, TrikeMotorcycle.superclass.superclass              # => true
    assert_equal 3, TrikeMotorcycle.new("Can-Am", "Spyder").number_of_tires  # => true
  end

end
