class LineitemsController < ApplicationController
  before_action :set_lineitem, only: [:show, :edit, :update, :destroy]

  # GET /lineitems
  def index
    @lineitems = Lineitem.all
  end

  # GET /lineitems/1
  def show
  end

  # GET /lineitems/new
  def new
    @lineitem = Lineitem.new
  end

  # GET /lineitems/1/edit
  def edit
  end

  # POST /lineitems
  def create
    @lineitem = Lineitem.new(lineitem_params)

    if @lineitem.save
      redirect_to @lineitem, notice: 'Lineitem was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lineitems/1
  def update
    if @lineitem.update(lineitem_params)
      redirect_to @lineitem, notice: 'Lineitem was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lineitems/1
  def destroy
    @lineitem.destroy
    redirect_to lineitems_url, notice: 'Lineitem was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lineitem_params
      params.require(:lineitem).permit(:order_id, :item_id, :quantity)
    end
end
