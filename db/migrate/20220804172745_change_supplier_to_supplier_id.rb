class ChangeSupplierToSupplierId < ActiveRecord::Migration[7.0]
  def change
    rename_column(:products, :supplier, :supplier_id)
  end
end
