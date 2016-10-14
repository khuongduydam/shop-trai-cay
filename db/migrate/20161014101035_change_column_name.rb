class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :type, :type_of_product
  end
end
