class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.to_json, status: 200
  end
end
