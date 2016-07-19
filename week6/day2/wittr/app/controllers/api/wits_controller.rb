module Api
  class WitsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
      render json: Wit.where(user_id: params[:user_id])
    end

    def show
      render json: Wit.find_by(id: params[:id])
    end

    def create
      wit = Wit.new(wit_params)
      wit.user_id = params[:user_id]
      if wit.save
        render json: wit
      else
        render json: { message: "Could not be created.", errors: wit.errors }, status: :unprocessable_entity
      end
    end

    def update
      wit = Wit.find(params[:id])
      if wit.update(wit_params)
        render json: wit
      else
        render json: { message: "Could not be updated.", errors: wit.errors }, status: :unprocessable_entity
      end
    end

    def destroy
      wit = Wit.find(params[:id])
      if wit.destroy
        render json: { message: "Destroyed" }
      else
        render json: { message: "Could not be destroyed." }, status: :unprocessable_entity
      end
    end

    private
    def wit_params
      params.require(:wit).permit(:body)
    end
  end
end

