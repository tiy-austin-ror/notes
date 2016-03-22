require 'json'

class User
  attr_accessor :first_name, :last_name, :age

  def initialize(f_name, l_name, age)
    @first_name = f_name
    @last_name = l_name
    @age = age
  end

  def as_json
    {
      first_name: @first_name,
      last_name: @last_name,
      age: @age
    }.to_json
  end
end
