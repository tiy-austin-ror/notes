class MockOutput
  attr_reader :messages

  def initialize
    @messages = []
  end

  def puts(msg)
    @messages.push(msg)
  end

  def print(msg)
    @messages.push(msg)
  end

end
