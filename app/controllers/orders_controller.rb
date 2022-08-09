class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create  
    product = Product.find_by(id: params[:product_id])
    order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity],
      tax: product.tax * params[:quantity],
      total: product.total * params[:quantity]
    }) 

    if order.save
      render json: {success: "ordered #{params[:quantity]}"}
    else
      render json: {error: "Something went wrong, try again?"}
    end
  end

  def index
    user = current_user
    orders = Order.where(user_id: user.id)
    render json: {orders: orders}
  end
end
