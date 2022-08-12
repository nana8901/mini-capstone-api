class CartedProductsController < ApplicationController
  
  def create
    cartprod = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: "carted"
    )

    if cartprod.save!
      render json: cartprod.as_json
    else
      render json: {uhoh: cartprod.as_json}
    end
  end

  def index
    carted = current_user.carted_products
    render json: carted.as_json
  end

  def purchase
    code 
  end

end
