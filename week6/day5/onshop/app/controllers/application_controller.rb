require 'cart'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup_sidebar

  def setup_sidebar
    @cart = Cart.new(session[:cart_items])
  end
end
