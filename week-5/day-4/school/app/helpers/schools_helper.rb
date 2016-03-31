module SchoolsHelper
  def teacher_to_student_ratio(school)
    if school.students_count == 0
      to_num = 0
    else
      to_num = 1
    end
    "<p>Student to teacher ratio is : <strong>#{school.teacher_to_student_ratio} to #{to_num}</strong></p>".html_safe
  end
end
