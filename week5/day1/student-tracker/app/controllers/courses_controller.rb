class CoursesController < ApplicationController
  def index
    courses = Course.all
    respond_to do |f|
      f.html do
        render template: 'courses/index.html.erb', locals: { courses: courses }
      end
      f.json do
        render json: courses.to_json, status: 200
      end
    end
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
    respond_to do |f|
      f.html do
        render template: 'courses/students.html.erb', locals: { course: course, students: course.students }
      end
      f.json do
        render json: course.students.to_json, status: 200
      end
    end
  end
end
