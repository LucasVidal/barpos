class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :order, index: true
      t.float :amount
      t.string :payment_type

      t.timestamps null: false
    end
    add_foreign_key :payments, :orders
  end
end
