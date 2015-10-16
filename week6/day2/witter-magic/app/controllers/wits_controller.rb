class WitsController < ApplicationController
  before_action :get_user, except: [:index]

  def index
    if params[:page].to_i < 0
      redirect_to wits_path, alert: "Negative pages are not allowed!"
    else
      @page  = (params[:page]  ||  0).to_i
      @wits  = Wit.limit(10).offset(@page * 10)
    end
  end

  def show
    @wit = Wit.find(params[:id])
  end

  def new
    @wit = Wit.new
  end

  def edit
    @wit = Wit.find(params[:id])
  end

  def create
    @wit = Wit.new(wit_params)
    @wit.user_id = user.id
    if @wit.save
      redirect_to user_wit_path(@user, @wit)
    else
      render :new
    end
  end

  def update
    @wit  = Wit.find(params[:id])
    @wit.update(wit_params)
    if @wit.save
      redirect_to user_wit_path(@user, @wit)
    else
      render :edit
    end
  end

  def destroy
    if Wit.exists?(params[:id])
      Wit.destroy(params[:id])
    end
    redirect_to user_path(params[:user_id]) #redirect to wits index after destroy
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end

  def wit_params
    params.require(:wit).permit(:message, :published)
  end
end
