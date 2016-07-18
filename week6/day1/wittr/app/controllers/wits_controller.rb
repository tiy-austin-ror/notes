class WitsController < ApplicationController
  def index
    render locals: {
      wits: Wit.where(user_id: params[:user_id]),
      user: User.find(params[:user_id])
    }
  end

  def show
    render locals: {
      wit: Wit.find(params[:id])
    }
  end

  def new
    render locals: {
      wit: Wit.new,
      user: User.find(params[:user_id])
    }
  end

  def create
    wit = Wit.new(wit_params)
    wit.user_id = params[:user_id]
    if wit.save
      redirect_to user_wit_path(params[:user_id], wit)
    else
      render :new
    end
  end

  private
  def wit_params
    params.require(:wit).permit(:body)
  end
end




