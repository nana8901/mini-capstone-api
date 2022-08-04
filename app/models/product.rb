class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, comparison: {greater_than: 0}
  validates :stock, comparison: {greater_than: -1}
  validates :description, presence: true
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
  
  def supplier
    supplier = Supplier.find_by(id: supplier_id)
    return supplier 
  end
end
