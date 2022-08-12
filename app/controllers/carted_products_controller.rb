class CartedProductsController < ApplicationController
  
  def create
    p params
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

  def remove
    code 
  end

  def purchase
    code 
  end

end
