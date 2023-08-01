Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :update, :destroy]

  resources :farmer_products, only: [:index, :show]

  resources :farmer_product_sales, only: [:index, :show, :create, :update, :destroy]

  resources :farmer_produce_sales, only: [:index, :show, :create, :update, :destroy]

  resources :farmer_trainings, only: [:index, :show, :create, :update, :destroy]

  resources :farming_lands, only: [:index, :show, :create, :update, :destroy]

  resources :land_operations, only: [:index, :show, :create, :update, :destroy]


end
