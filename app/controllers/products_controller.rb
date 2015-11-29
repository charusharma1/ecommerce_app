class ProductsController < ApplicationController
	def index
		@categories = Category.all 
			if params[:view]=="discounted"
				@products = Product.where("price < ?", 50)
			elsif params[:category]
				@products = Category.find_by(name: params[:category]).products
			else
				@products = Product.all
			end

	end

	def new
		@product = Product.new
	end
	
	def create
		@product = Product.new(id: params[:id], name: current_user.email,price: params[:price], description: params[:description], user_id: current_user.id)
		# Image.create(product_id: Product.last.id, image_url: params[:image_url])
		if @product.save 
			redirect_to "/products/#{product.id}"
			flash[:success] = "Created!"
		else
			render 'new' 
		end

	end

	def show
				
				if params[:id] == "random"
					@product = Product.all.sample
				else
					@product = Product.find_by(id: params[:id])
				end

				@category = @product.categories

	end

	def edit
		@product = Product.find_by(id: params[:id])
	end

	def update
		product = Product.find_by(id: params[:id])
		product.update(name: params[:name],price: params[:price])
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
