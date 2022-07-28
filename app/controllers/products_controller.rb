class ProductsController < ApplicationController
  
  def index
    render json: [Product.all]
  end

  def show
    id = params[:id]
    product = Product.find_by(id: id)
    render json: product.as_json
  end

  def create
    p params 
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    product.save
    render json: {new_product: product}
    
  end

end 