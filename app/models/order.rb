#  提交订单的时候 锁定 Product
#  同意订单的时候 无需要操作 Product
#  拒绝订单的时候 free Product

class Order < ActiveRecord::Base
  # applied accept deny
  attr_accessible :status

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
  
  def set_product_status(status)
    self.line_items.each do |line_item|
      p = Product.find(line_item.product_id)
      p.status = status
      p.save!
    end
  end

  private

  def set_default_status
    self.status = "applied"
  end
end
