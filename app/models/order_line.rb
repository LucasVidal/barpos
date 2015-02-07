class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :quantity
end
