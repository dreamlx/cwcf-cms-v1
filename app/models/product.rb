#暂时把展位当作商品来看待
#展位有编码和状态

#status 有三个状态 free（空闲）locked（已锁定）

# 展区是唯一的 也就是说该商品时唯一的

class Product < ActiveRecord::Base
  attr_accessible :number, :status
  has_one :line_item
end
