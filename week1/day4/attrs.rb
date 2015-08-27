class User
  attr_accessor :name  # does get and set
                       # reader is only get
                       # and writer is only set

  def initialize(initial_name = 'ben')
    @name = initial_name
  end

end
# The above and below classes are identical in functionality
class User

  def initialize(initial_name = 'no name')
    @name = initial_name                    # => "jake", "no name"
  end

  def name
    @name   # => "no name", "justin"
  end

  def name=(new_name)
    @name = new_name   # => "justin"
  end

end
User.new('jake')    # => #<User:0x007f8808f8b9d8 @name="jake">
me = User.new       # => #<User:0x007f8808f8b7a8 @name="no name">
me.name             # => "no name"
me.name = "justin"  # => "justin"
me.name             # => "justin"
