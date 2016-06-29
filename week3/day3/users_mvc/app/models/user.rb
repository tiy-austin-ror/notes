class User
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def to_json(json_arg = nil)
     {
       first_name: @first_name,
       last_name: @last_name,
       age: @age
     }.to_json
  end

  def to_s
    "#{first_name.ljust(6)} - #{last_name.ljust(7)} - #{age}"
  end
end
