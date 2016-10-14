class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :model
      t.decimal :price, precision: 5, scale: 2
      t.integer :quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
