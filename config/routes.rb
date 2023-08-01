Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :create, :update, :destroy]

  resources :farmer_products, only: [:show, :create, :update, :destroy]

  resources :farmer_product_sales, only: [:show, :create, :update, :destroy]

  resources :farmer_produce_sales, only: [:show, :create, :update, :destroy]

  resources :farmer_trainings, only: [:show, :create, :update, :destroy]

  resources :farming_lands, only: [:show, :create, :update, :destroy]

  resources :land_operations, only: [:show, :create, :update, :destroy]


end
