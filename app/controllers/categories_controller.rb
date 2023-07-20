<<<<<<< HEAD

class CategoriesController < ApiController 
=======
class CategoriesController < ApiController
>>>>>>> addfc9e (21 July modification)
	def index 
		categories = Category.all
		render json: categories, status: :ok
	end
<<<<<<< HEAD
	
	def category_wise_product
		categories = Product.where(status:"available").group(:category_id)
		render json: categories
	end

=======
>>>>>>> addfc9e (21 July modification)
end
