require_relative '../lib/student'
require 'securerandom'

class StudentPicker
  STUDENTS = [
    Student.new("Dane"),
    Student.new("Jess"),
    Student.new("Karly"),
    Student.new("Quincy"),
  ]

  def run
    welcome
    if prompt =~ /(y|yes|ok)/
      puts
      puts random_student
    else
      puts "Goodbye"
      exit
    end
  end

  private

  def welcome
    puts "Welcome to student picker"
  end

  def prompt
    print "Would you like to pick a student at random? (y,n) > "
    gets.chomp
  end

  def random_student
    STUDENTS[SecureRandom.random_number(STUDENTS.count)].display
  end
end

StudentPicker.new.run
