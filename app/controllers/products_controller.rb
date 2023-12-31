

class ProductsController < ApiController 

	before_action :check_product, only:[:update, :destroy]
	
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
				render json: { message:'Update Sucessfully.. ', product:product }, status: :ok
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
									Product.available.where("name like ?","%#{params[:name]}%")
						    elsif params[:alphanumeric_id].present?
						    	Product.available.where("alphanumeric_id like ?","%#{params[:alphanumeric_id]}%")
						    elsif params[:category_name].present?
					  	  	Product.joins(:category).available.merge(Category.where("category_name like ?","%#{params[:category_name]}%"))
						    else
						    	Product.available
								end	
		check_render(products)
	end

	def show
		# product = Product.available.find_by("name like ?","%#{params[:name]}%")
		 product = Product.available.find_by(id:params[:id])
     if product.present?
		 	render json:product, status: :ok
		 else
		 	render josn: { message: "Please give valid id"}, status: :unprocessable_entity
		 end
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


	def check_product
	 @product = @current_user.products.available.find_by(id:params[:id])
	end
end
