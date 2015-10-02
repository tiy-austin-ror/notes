class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup_sidebar

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
end
