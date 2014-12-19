#暂时把展位当作商品来看待
#展位有编码和状态

#status 有三个状态 free（空闲）locked（已锁定）

# 展区是唯一的 也就是说该商品时唯一的

class Product < ActiveRecord::Base
  attr_accessible :number, :status

  has_one :line_item
  has_many :relations
  has_many :stores, :through => :relations

  def add_to_store(store, x, y)
    r = Relation.new(product_id: self.id, store_id: store.id, x_c: x, y_c:y)
    r.save!
  end

  def get_x
    # relations.collect.x_c
    ary = relations.collect do |relation|
      relation.x_c
    end
  end

  def get_y
    ary = relations.collect do |relation|
      relation.y_c
    end
  end
end
