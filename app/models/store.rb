# 现在将展区当为Store
# x_no y_no 是代表行列 
# store 表是由客户自行填写

class Store < ActiveRecord::Base
  attr_accessible :name, :x_no, :y_no

  has_many :relations
  has_many :products, :through => :relations
end
