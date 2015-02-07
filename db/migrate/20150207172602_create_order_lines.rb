class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.references :quantity, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_lines, :orders
    add_foreign_key :order_lines, :products
    add_foreign_key :order_lines, :quantities
  end
end
