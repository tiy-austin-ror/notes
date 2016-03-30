class EnrollInSameSchoolValidator < ActiveModel::Validator
  def validate(record)
    if record.course.school != record.student.school
      record.errors[:base] << "can only enroll in a course for a school they are attending"
    end
  end
end

class Enrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student


  validates_with EnrollInSameSchoolValidator
  validates :student_id, uniqueness: {
    scope: :course_id,
    message: "cannot be enrolled in the same course twice"
  }


end
