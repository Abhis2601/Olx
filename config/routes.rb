Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post'login', to:'authentication#login'

  get 'current_user_products', to:'products#current_user_products'

  get 'current_user_sold_products', to:'purchases#current_user_sold_products'
  
  resource :users

  resources :products

  resources :purchases  

  resources :categories
end
