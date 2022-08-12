class CartedProduct < ApplicationRecord
  belongs_to :orders, optional: true
  belongs_to :user
  belongs_to :product
end
