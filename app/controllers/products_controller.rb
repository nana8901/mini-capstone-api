class ProductsController < ApplicationController
  
  def all_products
    render json: [Product.all]
  end

end
