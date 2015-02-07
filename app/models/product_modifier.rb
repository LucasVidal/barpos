class ProductModifier < ActiveRecord::Base
  belongs_to :product
  belongs_to :modifier
end
