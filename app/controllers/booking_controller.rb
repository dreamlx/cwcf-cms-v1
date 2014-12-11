class BookingController < ApplicationController
  def index
    @products = Product.all
  end
end
