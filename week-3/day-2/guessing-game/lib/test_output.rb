class TestOutput
  def initialize
    @messages = []
  end

  def print(msg)
    @messages.push(msg)
  end

  def puts(msg)
    @messages.push(msg)
  end
end
