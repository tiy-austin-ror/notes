class User < ActiveRecord::Base

  def self.older_than(age)
    self.where("age >= #{age}")
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def last_first
    "#{last_name}, #{first_name}"
  end

  def dob
    Time.now.year - age
  end
end
