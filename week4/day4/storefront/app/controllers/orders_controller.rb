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

# The new action is for displaying an HTML form to the user and not used for APIs
# def new
# end

  def create
    puts "*" * 100
    puts params.inspect
    puts "*" * 100
  end

# The edit action is for displaying an HTML form to the user and not used for APIs
# def edit
# end

  def update
  end

  def destroy
  end
end
