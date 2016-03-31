class School < ActiveRecord::Base
  has_many :students
  has_many :teachers

  has_many :courses, through: :teachers
  has_many :enrollments, through: :students

  validates :name, presence: true

  def overenrolled_students
    students
      .joins(:enrollments)
      .group("students.id")
      .having("COUNT(enrollments.id) > 4")
  end

  def underenrolled_students
    students
      .joins(:enrollments)
      .group("students.id")
      .having("COUNT(enrollments.id) < 2")
  end

  def teacher_to_student_ratio
    return 0 if teachers.count < 1
    return 0 if students.count < 1
    students.count / teachers.count
  end

  def teachers_count
    teachers.count
  end

  def students_count
    students.count
  end
end
