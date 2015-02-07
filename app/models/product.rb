class Product < ActiveRecord::Base
	has_many :order_lines
	has_many :orders, through: :order_lines

	has_many :product_modifiers
	has_many :modifiers, through: :product_modifiers
end
