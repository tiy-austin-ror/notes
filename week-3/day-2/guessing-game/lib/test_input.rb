class TestInput
  def initialize
    @responses = [10, 40, 25, 75]
  end
  def gets
    @responses.pop
  end
end
