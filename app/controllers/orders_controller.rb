class OrdersController < ApplicationController

def new
end

def index
end

def create
  product = Product.find_by(id: params[:product_id])
  quantity = params[:quantity]
  tax = product.tax * quantity
  subtotal = product.price * quantity
  total = tax + subtotal

  order = Order.create(quantity: quantity, user_id: current_user.id, product_id: product_id, subtotal: subtotal, tax: tax, total: total)

  redirect_to "/orders/#{order.id}"
  flash[:success] = "Created!"
end

def update
end

def delete
end

def show
  @order = Order.find_by(id: params[:id])
end

def all_orders
end

end
