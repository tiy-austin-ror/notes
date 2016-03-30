class Course < ActiveRecord::Base
  belongs_to :teacher

  has_many :enrollments
  has_many :students, through: :enrollments

  validates :name, presence: true
  validates :duration, numericality: {
    only_integer: true,
  }

  def school
    teacher.school
  end

  def student_count
    students.count
  end

end
