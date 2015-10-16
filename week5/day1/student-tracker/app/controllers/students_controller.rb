class StudentsController < ApplicationController
  def index
    students = Student.all

    respond_to do |f|
      f.html do
        render template: 'students/index.html.erb', locals: { all_students: students }
      end
      f.json do
        render json: students.to_json, status: 200
      end
    end
  end

  def show
    student = Student.find(params[:id])

    render template: 'students/show.html.erb', locals: { student: student }
  end
end
