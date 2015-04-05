
Refinery::PagesController.class_eval do
  before_filter :fetch_hotels, :only => [:show]
  before_filter :set_cart, :set_products, :set_stores

  protected

  def fetch_hotels
    @hotels = ::Refinery::Hotels::Hotel.all
  end

  def set_products
    @products = Product.all
  end

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

  def set_stores
    @stores = Store.all
  end

end
