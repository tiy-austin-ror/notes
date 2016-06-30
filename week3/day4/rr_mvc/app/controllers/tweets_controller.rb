class TweetsController < ApplicationController
  def index
    render_template 'tweets/index.html'
    # render "I am a tweet!".to_json, status: "404 NOT FOUND"
    # render params.to_json

    # Use the render method now to specify what should be rendered to the screen
    # this 'render' method fills the request object.

    # By default, all render calls will make the status "200 OK", you only need
    # to add a status if you are changing from "200 OK" to something else.
  end

  def show
    @tweet = App.tweets.find { |x| x[:id] == params[:id].to_i }
    render_template "tweets/show.html.erb"
  end

  def new
    render_template "tweets/new.html.erb"
  end

  def create
    new_id = App.tweets.map { |tweet| tweet[:id] }.max + 1
    tweet = { message: params[:message], id: new_id }
    App.tweets.push(tweet)
    redirect_to "/tweets/#{new_id}"
  end

  def not_here
    redirect_to '/tweets'
  end
end
