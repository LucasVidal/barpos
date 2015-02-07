class CreateProductModifiers < ActiveRecord::Migration
  def change
    create_table :product_modifiers do |t|
      t.references :product, index: true
      t.references :modifier, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_modifiers, :products
    add_foreign_key :product_modifiers, :modifiers
  end
end
