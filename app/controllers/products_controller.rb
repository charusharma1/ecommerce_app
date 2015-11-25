class ProductsController < ApplicationController
	def index
	if params[:view]=="discounted"
		@features = Product.where("price < ?", 50)
	else
		@features = Product.all
	end

		@all_products = Product.all 
	end

	def new
	end
	
	def create
		new_product = Product.create(name: current_user.email,price: params[:price], user_id: current_user.id)
		Image.create(product_id: Product.last.id, image_url: params[:image_url])
		redirect_to "/products/#{new_product.id}"
		flash[:success] = "Created!"
	end

	def show
		@product = Product.find_by(id: params[:id])
		@images = Image.all 
	end

	def edit
		@product = Product.find_by(id: params[:id])
	end

	def update
		product = Product.find_by(id: params[:id])
		product.update(name: params[:name],image: params[:image],price: params[:price])
		redirect_to "/products/#{product.id}"
		flash[:success] = "Updated!"
	end

	def delete
		redirect_to "/products"
		flash[:danger] = "Destroyed!"
	end

	def all_products
		@all_products = Product.all
	end

end
