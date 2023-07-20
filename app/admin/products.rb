ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
<<<<<<< HEAD
  permit_params :name, :description, :price, :user_id, :product_id
=======
  # permit_params :name, :price, :description, :user_id, :category_id
>>>>>>> addfc9e (21 July modification)
  #
  # or
  #
  # permit_params do
<<<<<<< HEAD
  #   permitted = [:name, :description, :price, :user_id, :product_id]
=======
  #   permitted = [:name, :price, :description, :user_id, :category_id]
>>>>>>> addfc9e (21 July modification)
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
