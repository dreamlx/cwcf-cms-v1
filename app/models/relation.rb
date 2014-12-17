class Relation < ActiveRecord::Base
  attr_accessible :x_c, :y_c

  belongs_to :store
  belongs_to :product
end
