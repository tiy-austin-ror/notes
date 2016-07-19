class WitsController < ApplicationController
  def index
    wits = Wit.where(user_id: params[:user_id])
    # If you want to respond to multiple formats in a single controller action
    #  use 'respond_to' method that rails provides
    respond_to do |format|
      format.html do
        render locals: {
          wits: wits,
          user: User.find(params[:user_id])
        }
      end

      format.json do
        render json: wits
      end
    end
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
    if Rails.env.development?
      wit.ip_address = "71.42.69.90"
    else
      wit.ip_address = request.remote_ip
    end
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




