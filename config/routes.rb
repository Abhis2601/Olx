Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
=======
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
>>>>>>> e3e9c9f (20 July active admin)
=======
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
>>>>>>> addfc9e (21 July modification)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
<<<<<<< HEAD
  post'login', to:'authentication#login'

  get 'current_user_products', to:'products#current_user_products'

  get 'current_user_sold_products', to:'purchases#current_user_sold_products'
  
  get 'category_wise', to:'categories#category_wise_product'
  
  resource :users

  resources :products

  resources :purchases  

  resources :categories
=======
>>>>>>> e3e9c9f (20 July active admin)
=======
>>>>>>> addfc9e (21 July modification)
end
