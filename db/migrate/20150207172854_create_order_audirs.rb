class CreateOrderAudirs < ActiveRecord::Migration
  def change
    create_table :order_audirs do |t|
      t.references :order, index: true
      t.datetime :datetime
      t.string :status_from
      t.string :status_to

      t.timestamps null: false
    end
    add_foreign_key :order_audirs, :orders
  end
end
