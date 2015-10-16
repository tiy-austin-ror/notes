class RefactoredTweetsController < ApplicationController

  def index
    tweets = Tweet.all
    render_json(tweets)
  end

  def show
    if_tweet do |tweet|
      render_json(tweet)
    end
  end

  def create
    if not_empty_or_nil?(params[:message])
      render_json(Tweet.create(message: params[:message]), 201)
    else
      render_json_error("The 'message' parameter was empty or not found", 422)
    end
  end

  def update
    if_tweet do |tweet|
      tweet.message = params[:message]
      tweet.save
      render_json(tweet)
    end
  end

  def destroy
    if_tweet do |tweet|
      tweet.destroy
      render_json({ message: "Tweet Deleted Successfully." })
    end
  end

  private

  def if_tweet
    if Tweet.exists(params[:id])
      tweet = Tweet.find(params[:id])
      yield(tweet)
    else
      render_not_found
    end
  end

  def not_empty_or_nil?(field)
    !(field.nil? || field.empty?)
  end

  def render_not_found
    render_json_error('Record Not Found!', 404)
  end

  def render_json_error(message, status)
    render_json({ error_msg: message }, status)
  end

  def render_json(payload, status: 200)
    render json: payload.to_json, status: status
  end

end
