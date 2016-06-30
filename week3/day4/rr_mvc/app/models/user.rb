class User < ApplicationRecord
  attr_reader :id
  attr_accessor :name, :age, :zipcode

  def initialize(name, age, zipcode)
    @name = name
    @age = age
    @zipcode = zipcode
    @id = set_id
  end

  def self.all
    App.users
  end

  def self.find(id)
    self.all.find { |user| user.id == id.to_i }
  end

  def to_json(json_arg = nil)
    {
      id: @id,
      name: @name,
      age: @age,
      zip: @zipcode
    }.to_json
  end

  private
  def set_id
    $__user_id ||= 0
    $__user_id += 1
  end
end
