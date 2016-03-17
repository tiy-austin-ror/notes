class String
  def hype
    self.upcase + "!!"
    # Dont do
  end
end

class Object
  def to_s
    super + " - by Justin Herrick"
  end
end
