class CartedProduct < ApplicationRecord
  belongs_to :orders, optional: true
  belongs_to :users
  belongs_to :products
end
