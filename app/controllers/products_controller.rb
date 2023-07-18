class ProductsController < ApplicationController

	def create
		product = @current_user.products.new(products_params)
		product.alphanumeric_id = generate_alphanumeric(params[:name])
		if product.save 
			product.available!
		  render json: product, status: :created
 		else
			render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
		end
	end

	def update
		product = check_product(params[:id])
		if product.present?		
			if	product.update(products_params)
				render json: { message:'Update Sucessfully.. ', product:product } status: :ok
			else
				render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
			end
		else
			render json: { message:'Please give valid id' }, status: :unprocessable_entity
		end
	end

  def destroy
  	product = check_product(params[:id])
		if product.present? 
			if product.destroy
  			render json: { product: product, message:'Delete Sucessfully' }, status: :ok
			else
				render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
			end
		else
			render json: { message: 'Please give valid id' }, status: :unprocessable_entity
		end
  end
 
	def index
		products =  if params[:name].present?		 
									Product.available.find_by("name like ?","%#{params[:name]}%")
						    elsif params[:alphanumeric_id].present?
						    	Product.available.find_by("alphanumeric_id like ?","%#{params[:alphanumeric_id]}%")
						    elsif params[:category_id].present?
						  	  Product.joins(:category).available.where(category_id:params[:category_id])
						    else
						    	Product.available
								end	
		check_render(products)

	end

	def current_user_products
		products = @current_user.products.available
		check_render(products)
	end

	private

	def products_params
		params.permit(:name, :price, :description, :image, :category_id)
	end

	def check_render(product)
		if product.present?
			render json: product, status: :ok 
		else
			render json: { message:"Record Not Found" }, status: :not_found
		end
	end

	def generate_alphanumeric(value)
		random_num = rand(1000)
	 	data = value + "#{random_num}"
	 	return data
	end

	def check_product(value)
	 @current_user.products.available.find_by(id:value)
	end

end
