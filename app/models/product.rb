class Product < ApplicationRecord

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end
  
end
