class SchoolsController < ApplicationController
  def index
    @schools = School.all
    render template: "/schools/index.html.erb"
  end
end
