class WitsController < ApplicationController
  def index
    # limit = (params[:limit] || 10).to_i
    #
    # page  = (params[:page]  ||  0).to_i
    # wits  = Wit.limit(limit).offset(page * limit)
    #
    # render locals: { wits: wits, page: page , limit: limit }
    # Above is with limit coming from the URL, below is hardcoded 10
    page  = (params[:page]  ||  0).to_i
    wits  = Wit.limit(10).offset(page * 10)
    render locals: { wits: wits, page: page }
  end

  def show
    render locals: {
      user: User.find(params[:user_id]),
      wit: Wit.find(params[:id])
    }
  end

  def new
    render locals: {
      user: User.find(params[:user_id]),
      wit: Wit.new
    }
  end

  def create
    user = User.find(params[:user_id])
    wit = Wit.new
    wit.user_id   = user.id
    wit.message   = params.fetch(:wit).fetch(:message)
    wit.published = false
    if wit.save
      redirect_to user_wit_path(user, wit)
    else
      render template: 'wits/new.html.erb', locals: {
        user: user,
        wit: wit,
      }
    end
  end

  def update
  end

  def destroy
    if Wit.exists?(params[:id])
      Wit.destroy(params[:id])
    end
    redirect_to wits_path #redirect to wits index after destroy
  end
end
