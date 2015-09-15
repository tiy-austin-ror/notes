class User < ActiveRecord::Base
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
