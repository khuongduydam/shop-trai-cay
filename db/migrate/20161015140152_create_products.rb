class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.string :type_of_product
      t.integer :quantity
      t.integer :price
      t.string :come_from

      t.timestamps
    end
  end
end
