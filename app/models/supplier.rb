class Supplier < ApplicationRecord
  has_many :product
  validates :name, presence: true

end
