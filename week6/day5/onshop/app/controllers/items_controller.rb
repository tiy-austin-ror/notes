class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    order_by = (params[:order] || :id) #if no sort is specified, sort by id
    sort     = (params[:sort]  || "ASC") #sort ascending by default
    @items = Item.order("#{order_by} #{sort}").page(params[:page])
  end

  def show; end
  def edit; end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  def remove_from_cart
    item_id = params[:id]
    cart_items = session[:cart_items]
    cart_items.delete(item_id)
    redirect_to :back
  end

  def add_to_cart
    cart_items = session[:cart_items]
    if cart_items.nil? || !cart_items.is_a?(Array)
      session[:cart_items] = [params[:id]]
    else
      new_cart_items = cart_items.push(params[:id])
      session[:cart_items] = new_cart_items
    end
    redirect_to :back
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :img_url, :price, :quantity)
    end
end
