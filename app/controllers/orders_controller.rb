class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create  
    allcartprod = current_user.carted_products
    bought = []
    subtotal = 0.0
    tax = 0.0
    total = 0.0

    allcartprod.each do |prod|
      if prod[:status] == "carted"
        to_add = Product.find_by(id: prod.product_id)
        bought << prod
        subtotal += (to_add.price * prod.quantity)
        tax += (to_add.tax * prod.quantity)
        total += (to_add.total * prod.quantity)
      end
    end

    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )

    if order.save
      bought.each do |changing|
        changing[:status] = "purchased"
        changing[:order_id] = order.id
        changing.save
      end
      render json: {success: order.as_json, theprods: current_user.carted_products.as_json}
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
