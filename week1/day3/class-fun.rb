class Student

  def initialize
    @bed_time   = "Didn't sleep yet"
    @awake_time = "Not yet"
  end

  def wakes_up
    @awake_time = Time.now
    "Went to bed at #{@bed_time} and woke up at #{@awake_time}"
  end

  def sleep
    @bed_time = Time.now
    "Goes to bed at #{@bed_time}"
  end

  def study
    "Studies"
  end
end
# jacob = Student.new #Creating an instance of the class Student and
# assigning it to the variable 'jacob'
# sarah = Student.new
# sarah.wakes_up
# sarah.sleep
# sarah.wakes_up


class Person

  def initialize(name)
    @name = name
  end

  def get_name
    @name.capitalize
  end

  def set_name(new_name)
    @name = new_name
  end

end

# Classes are Factories (Nouns)
# Their methods are Actions (Verbs)
# Their instance variables are properties (Data or State)

# person1 = Person.new("bob")  # => #<Person:0x007fb598e1be78 @name="bob">
# person2 = Person.new("jil")  # => #<Person:0x007fb598e1bbf8 @name="jil">

# person1.get_name         # => "Bob"
# person1.set_name("ben")  # => "ben"
# person1.get_name         # => "Ben"
# person1                  # => #<Person:0x007fb598e1be78 @name="ben">
# person2.get_name         # => "Jil"

# people = Array.new  # => []

# people.push(Person.new('ryan'))
# people.push(Person.new('justin'))
# people.push(Person.new('jacob'))
# people.push(Person.new('travis'))
# people.push(Person.new('kate'))
# people.push(Person.new('sarah'))
# people.push(Person.new('sam'))

# people.each do |person|
#   puts person.get_name
# end


class Animal
  def breathe
    "*inhales*"  # => "*inhales*"
  end

  def speak
    "grrrrrrsssgg"
  end
end

class Cat < Animal
  def speak
    "meow"          # => "meow"
  end
end

class Kitten < Cat
  def speak
    "mew"
  end
end

class Dog < Animal
  def speak
    "woof"
  end
end

cat = Cat.new
cat.class.ancestors
cat.speak
cat.breathe
