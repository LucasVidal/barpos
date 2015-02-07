class CreatePaymentAudits < ActiveRecord::Migration
  def change
    create_table :payment_audits do |t|
      t.references :payment, index: true
      t.float :amount_from
      t.float :amount_to
      t.string :payment_type_from
      t.string :payment_type_to
      t.datetime :datetime

      t.timestamps null: false
    end
    add_foreign_key :payment_audits, :payments
  end
end
