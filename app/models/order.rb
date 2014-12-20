class Order < ActiveRecord::Base
  # attr_accessible :title, :body

  before_create :set_default_status

  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def get_user
    Refinery::User.find(self.user_id)
  end

  private

  def set_default_status
    self.status = "applied"
  end
end
