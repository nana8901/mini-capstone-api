class SuppliersController < ApplicationController
  def index
    @suppliers = Product.all
    render json: @suppliers.as_json
    # render template: "suppliers/index"
  end

  def show
    id = params[:id]
    @supplier = Supplier.find_by(id: id)
    render json: @supplier.as_json
    # render template: "suppliers/show"
  end

  def create
    p params 
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    # product.save
    
    if product.save
      render json: {new_supplier: supplier} 
    else
      render json: {error: "Something went wrong, try again?"} 
    end
  end

  def update
    # p params 
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    if supplier.save
      render json: {updated: supplier.as_json}
    else
      render json: {error: "Something went wrong, try again?"}
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: {confirmed: "Supplier #{params[:id]} deleted."}
  end

end
