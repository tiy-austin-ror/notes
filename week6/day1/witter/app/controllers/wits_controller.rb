class WitsController < ApplicationController
  def index
    page  = (params[:page]  ||  0).to_i
    wits  = Wit.limit(10).offset(page * 10)
    render locals: { wits: wits, page: page }
  end

  def show
    render locals: {
      user: get_user,
      wit: Wit.find(params[:id])
    }
  end

  def new
    render locals: {
      user: get_user,
      wit: Wit.new
    }
  end

  def edit
    render locals: {
      user: User.find(params[:user_id]),
      wit: Wit.find(params[:id])
    }
  end

  def create
    user = get_user
    wit = Wit.new(wit_params)
    wit.user_id = user.id
    if wit.save
      redirect_to user_wit_path(user, wit)
    else
      render :new, locals: {
        user: user,
        wit: wit
      }
    end
  end

  def update
    user = get_user
    wit  = Wit.find(params[:id])
    wit.update(wit_params)
    if wit.save
      redirect_to user_wit_path(user, wit)
    else
      render :edit, locals: {
        user: user,
        wit: wit
      }
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
    User.find(params[:user_id])
  end

  def wit_params
    params.require(:wit).permit(:message, :published)
  end
end
