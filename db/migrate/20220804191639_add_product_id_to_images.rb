class AddProductIdToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :product_id, :integer
  end
end
