class BookingController < ApplicationController

  before_filter :set_cart
  def index
    @products = Product.all
  end

  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
