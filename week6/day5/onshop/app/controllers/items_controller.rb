require 'cart'
class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user, only: [:index, :show, :add_to_cart, :remove_from_cart]

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

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  def remove_from_cart
    SessionCart.new(session).remove(params[:id])
    redirect_to :back
  end

  def add_to_cart
    SessionCart.new(session).add(params[:id])
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
