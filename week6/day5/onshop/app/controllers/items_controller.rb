class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    order_by = (params[:order] || :id)
    sort     = (params[:sort]  || "ASC")
    @items = Item.order("#{order_by} #{sort}").page(params[:page])
    setup_sidebar
  end

  # GET /items/1
  def show
    setup_sidebar
  end


  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
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
    def setup_sidebar
      @cart_items = []
      @cart_price = 0
      cart_item_ids = session[:cart_items]
      if cart_item_ids.present?
        cart_item_ids.each do |id|
          @cart_items << Item.find(id)
        end
        @cart_price = @cart_items.map { |item| item.price }.sum
        @cart_price /= 100
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :description, :img_url, :price, :quantity)
    end
end
