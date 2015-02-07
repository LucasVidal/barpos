class CreateOrderLineModifiers < ActiveRecord::Migration
  def change
    create_table :order_line_modifiers do |t|
      t.references :order_line, index: true
      t.references :modifier, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_line_modifiers, :order_lines
    add_foreign_key :order_line_modifiers, :modifiers
  end
end
