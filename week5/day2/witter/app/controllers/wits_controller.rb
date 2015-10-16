class WitsController < ApplicationController
  def index
    render template: 'wits/index.html.erb', locals: { wits: Wit.all }
  end

  def show
    render template: 'wits/show.html.erb', locals: { wit: Wit.find(params[:id])}
  end

  def new
    user_options = User.all.map { |u| [u.name, u.id] }
    render template: 'wits/new.html.erb', locals: {
      wit: Wit.new,
      user_options: user_options
    }
  end

  def create
    # message, user_id
    wit = Wit.new
    wit.message   = params.fetch(:wit).fetch(:message)
    wit.user_id   = params.fetch(:wit).fetch(:user_id)
    wit.published = false
    if wit.save
      redirect_to wit_path(wit)
    else
      redirect_to wits_path #If wit didn't save, go back to wits index :(
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
