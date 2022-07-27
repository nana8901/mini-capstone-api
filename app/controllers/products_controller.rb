class ProductsController < ApplicationController
  
  def all_products
    render json: [Product.all]
  end
  def product_number
    product = Product.find_by(id: params["id"])
    render json:[product]
  end
end