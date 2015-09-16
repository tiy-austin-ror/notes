class TweetsController < ApplicationController

  def index
    tweets = Tweet.all
    render json: tweets.to_json, status: 200
  end

  def show
    if Tweet.exists?(params[:id])
      tweet = Tweet.find(params[:id])
      render json: tweet.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def create
    #For create to work, we must *require* that a parameter is sent with the name 'message'
    if params[:message].nil? || params[:message].empty?
      err_msg = "The 'message' parameter was empty or not found"
      render json: { error_msg: err_msg }.to_json, status: 422
    else
      # tweet = Tweet.create(message: params[:message])
      tweet = Tweet.new
      tweet.message = params[:message]
      tweet.save
      render json: tweet.to_json, status: 201
    end
  end

  def update
    if Tweet.exists?(params[:id])
      tweet = Tweet.find(params[:id])
      tweet.message = params[:message]
      tweet.save
      render json: tweet.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def destroy
    if Tweet.exists?(params[:id])
      tweet = Tweet.find(params[:id])
      tweet.destroy
      render json: { message: "Tweet Deleted Successfully." }, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

end
