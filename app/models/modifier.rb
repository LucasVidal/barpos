class Modifier < ActiveRecord::Base
	has_many :product_modifiers
	has_many :products, through: :product_modifiers
end
