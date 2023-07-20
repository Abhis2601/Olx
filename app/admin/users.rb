ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
<<<<<<< HEAD
  permit_params :first_name, :last_name, :mobile_no, :email, :password
=======
  # permit_params :first_name, :last_name, :email, :mobile_no, :password
>>>>>>> addfc9e (21 July modification)
  #
  # or
  #
  # permit_params do
<<<<<<< HEAD
  #   permitted = [:first_name, :last_name, :mobile_no, :email, :password]
=======
  #   permitted = [:first_name, :last_name, :email, :mobile_no, :password]
>>>>>>> addfc9e (21 July modification)
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
