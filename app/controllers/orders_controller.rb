class OrdersController < ApplicationController
  def create
    product = Product.find_by(params[:product_id])
    subtotal = product.pr
    order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    }) 

    if order.save
      render json: {success: "ordered #{:quantity}"}
    else
      render json: {error: "Something went wrong, try again?"}
    end
  end
end
