class User
  attr_accessor :id, :name, :age
  def initialize(id, name, age)
    @id = id
    @name = name
    @age = age
  end

  def to_json(_ = nil)
    {
      id: id,
      name: name,
      age: age
    }.to_json
  end
end
