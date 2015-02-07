class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.string :name
      t.float :price

      t.timestamps null: false
    end
  end
end
