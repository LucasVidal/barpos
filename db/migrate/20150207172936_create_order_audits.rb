class CreateOrderAudits < ActiveRecord::Migration
  def change
    create_table :order_audits do |t|
      t.references :order, index: true
      t.datetime :datetime
      t.string :status_from
      t.string :status_to

      t.timestamps null: false
    end
    add_foreign_key :order_audits, :orders
  end
end
