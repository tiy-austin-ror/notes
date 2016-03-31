class SchoolsController < ApplicationController
  def index
    @schools = School.all
    respond_to do |format|
      format.html
      format.json do
        render json: @schools.to_json
      end
      format.text do
        render text: @schools.inspect
      end
    end
  end

  def new
    @school = School.new

    #To not use instance variables, you need to render the data explicitly as a local varaible into the view.
    # render locals: {
    #   school: School.new
    # }

    # By default rails renders the template of the same name as this action
  end

  def create
    @school = School.new
    @school.name = params[:school][:name]
    @school.motto = params[:school][:motto]
    @school.location = params[:school][:location]
    
    if @school.save
      redirect_to school_path(@school.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! School couldn't be saved!"
      render :new
    end
  end

  def show # GET /schools/:id
    @school = School.find(params[:id])
  end

  def edit # GET /schools/:id/edit
    @school = School.find(params[:id])
  end

  def update # PUT /schools/:id
    @school = School.find(params[:id])
    #Do update
  end

  def destroy # DELETE /schools/:id
    @school = School.find(params[:id])
    @school.destroy
  end
end
