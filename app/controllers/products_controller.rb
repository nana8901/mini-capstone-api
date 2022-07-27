class ProductsController < ApplicationController
  
  def all_products
    render json: [Product.all]
  end
  def product_number
    p params["id"]
  end
end