class ProductsController < ApplicationController

	def create
		# byebug
		@product=@current_user.products.new(products_params)
		@product.status='available'
		if @product.present?
		  if @product.image.present? 
			  @product.save
	      # render json: {product:@product ,image_url: rails_blob_path(@product.image, disposition: "attachment", only_path: true)} ,status: :created
 		  	render json: @product
 		  else
	 		  	@product.save
	 		  	render json: @product
	  	end
 		else
				render json:{error: @product.errors.full_messages},status: :unprocessable_entity
		end

	end

	def update
		@product = Product.find_by_id(params[:id])
		if @product.present?
			if @product.user_id == @current_user.id
			  if @product.update(products_params)
					render json: @product ,status: :ok
				else
					render json:{error: @product.errors.full_messages},status: :unprocessable_entity
				end
			else
				render json:{message:"You can not update this product ,because it is not your's product"}
			end
		else
			render json:{message:"Please enter right id of Product"}
		end
	end

  def destroy
  	@product = Product.find_by_id(params[:id])
  	if @product.user_id == @current_user.id
  		 @product.destroy
  		 render json:{message:'Delete Sucessfully'},status: :ok
		else
			render json:{message:'You can not delete this product,because it is not your product'},status: :ok
		end
  end

	def available_product
		@product=Product.where(status:"available")
		if @product.present?
			render json: @product ,status: :ok
		else
			render json:{message:"no available product "}
		end
	end
  
  def sold_product
  	@product=Product.where(status:'sold',user_id:@current_user.id)
  	if @product.present?
			render json: @product ,status: :ok
		else
			render json:{message:"not product sold till now"}
		end
  end

	def particular_product
		@product=Product.where(name:params[:name],status:'available')
		if @product.present?
			render json: @product ,status: :ok
		else
			render json:{message:"not found"}
		end
	end

	def users_product
		@product=Product.where(user_id:@current_user.id, status:'available')
		if @product.present?
			render json: @product ,status: :ok
		else
			render json:{message:"not product of user"}
		end
	end  

	def search_product_category
		@product=Product.where(category:params[:category],status:'available')
		if @product.present?
			render json: @product ,status: :ok
		else
			render json:{message:"please write valid category"}
		end
	end

	def search_alphanumeric
		@product=Product.where(alphanumeric_id:params[:alphanumeric_id],status:'available')
		if @product.present?
			render json: @product, status: :ok
		else
			render json:{message:"not product of this alphanumeric_id "}
		end
	end 

	private

	def products_params
		params.permit(:name,:category,:alphanumeric_id,:price,:description,:image)
	end

end

