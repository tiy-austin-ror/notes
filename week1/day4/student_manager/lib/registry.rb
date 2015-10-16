class Registry
  attr_accessor :students

  def length
    if @students.nil?
      0
    else
      @students.length
    end
  end
end
