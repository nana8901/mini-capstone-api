class Category < ApplicationRecord
  has_many :category_product
  has_many :product, through: :category_product
  

end
