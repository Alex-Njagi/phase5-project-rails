Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'index#index'
  resources :users

  resources :farmer_products, only: [:index, :show]

  resources :farmer_product_sales, only: [:create]

  resources :farmer_produce_sales, only: [:create]

  resources :farmer_trainings, only: [:create]

  resources :farming_lands, only: [:index, :show, :create, :update, :destroy]

  resources :land_operations, only: [:create, :update, :destroy]

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  # mpesa payment
  post "/stkpush", to: "mpesas#stkpush"
  post "/stkquery", to: "mpesas#stkquery"

  get "/password/reset", to: "password_resets#new"
  post "/password/reset", to: "password_resets#create"
  get "/password/reset/edit/:token", to: "password_resets#edit"
  # patch "/reset-password", to: "password_resets#update"
  post "/reset-password", to: "password_resets#update"

  resources :public_client_products, only: [:index, :show]

  resources :public_client_product_sales


end
