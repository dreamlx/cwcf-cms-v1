class LineItem < ActiveRecord::Base
  attr_accessible :product, :cart

  belongs_to :product
  belongs_to :cart
  belongs_to :order
end
