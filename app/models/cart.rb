class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  # 如果删除了当前的Cart 那么与之相关联的line_items都会删掉
  has_many :line_items, dependent: :destroy
end
