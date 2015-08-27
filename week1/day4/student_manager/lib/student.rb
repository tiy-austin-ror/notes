class Student
  attr_reader :id, :first_name
  attr_writer :location
  attr_accessor :gpa

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @id = rand(1000) #ID will automatically be set to a random number from
                     # one to 1000 (hopefully we have no collisions :3)
    @gpa = 0
    #@location is nil
  end

  def self.at_location(location, first_name, last_name)
    student = Student.new(first_name, last_name)
    student.location = location
    student
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def last_first
    "#{@last_name}, #{@first_name}"
  end

  def location
    if @location.nil?
      'No location'
    else
      @location
    end
  end
end
