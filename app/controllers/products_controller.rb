class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    # render json: products.as_json
  end

  def show
    id = params[:id]
    @product = Product.find_by(id: id)
    # render json: product.as_json(methods:[:friendly_created_at, :is_discounted?, :tax, :total])
    render template: "products/show"
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

  def update
    # p params 
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {confirmed: "Item #{params[:id]} deleted."}
  end


end 