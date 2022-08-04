class AddUrlToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :url, :string
  end
end
