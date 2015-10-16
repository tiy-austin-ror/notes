class CoursesController < ApplicationController
  def index
    courses = Course.all
    render json: courses.to_json, status: 200
  end

  def show
    course = Course.find(params[:id])
    if params[:include_students]
      render json: course.to_json(include: :students), status: 200
    else
      render json: course.to_json, status: 200
    end
  end

  def students
    course = Course.find(params[:id])
    render json: course.students.to_json, status: 200
  end
end
