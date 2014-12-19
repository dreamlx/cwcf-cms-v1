class Relation < ActiveRecord::Base
  attr_accessible :x_c, :y_c, :store_id, :product_id

  belongs_to :store
  belongs_to :product
end
