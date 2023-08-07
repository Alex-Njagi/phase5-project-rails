Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users

  resources :farmer_products, only: [:index, :show]

  resources :farmer_product_sales, only: [:create]

  resources :farmer_produce_sales, only: [:create]

  resources :farmer_trainings, only: [:create]

  resources :farming_lands, only: [:index, :show, :create, :update, :destroy]

  resources :land_operations, only: [:create, :update, :destroy]

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  get '/password_reset', to: 'password_reset#new'
  post '/password_reset', to: 'password_reset#create'

  resources :public_client_products, only: [:index, :show]

  resources :public_client_product_sales


end
