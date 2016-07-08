class OrdersController < ApplicationController
  def index
    render json: Order.all, status: 200
  end

  def show
    if Order.exists?(params[:id])
      render json: Order.find(params[:id]), status: 200
    else
      render json: { message: "Order not found." }, status: 404
    end
  end

# def new # This action is for displaying an HTML form to the user and not used for APIs
# end

  def create
    order = Order.new(user_id: params[:user_id], item_id: params[:item_id], quantity: params[:quantity])

    if order.save
      render json: order.to_json, status: 200
    else
      render json: order.errors.to_json, status: :unprocessable_entity
    end
  end

# def edit # This action is for displaying an HTML form to the user and not used for APIs
# end

  def update
    order = Order.find(params[:id])

    if order.update(user_id: params[:user_id], item_id: params[:item_id], quantity: params[:quantity])
      render json: order.to_json, status: 200
    else
      render json: order.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
    if Order.exists?(params[:id])
      Order.destroy(params[:id])
      render json: { message: "Order destroyed." }, status: 200
    else
      render json: { message: "Order not found." }, status: 404
    end
  end
end
