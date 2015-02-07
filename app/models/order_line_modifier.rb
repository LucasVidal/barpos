class OrderLineModifier < ActiveRecord::Base
  belongs_to :order_line
  belongs_to :modifier
end
