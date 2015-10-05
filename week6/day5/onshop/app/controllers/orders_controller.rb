class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = create_order_from_session_cart

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private
    def create_order_from_session_cart
      cart  = SessionCart.new(session)
      order = Order.new
      cart.item_ids.each do |id|
        # I don't need to supply the order_id below, because I am creating this
        # Lineitem "through" the relation, so rails sets that up for you.
        order.lineitems.create(
          item_id: id,
          quantity: 1 # Should be updated to be dynamic at some point
        )
      end
      if order.save
        order
      end
    end

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:user_id)
    end
end
