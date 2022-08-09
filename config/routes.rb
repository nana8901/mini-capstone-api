Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "products#index" # everybody
  get "/products/:id" => "products#show" # everybody
  post "products" => "products#create" # admin
  patch "products/:id" => "products#update" # admin
  delete "products/:id" => "products#destroy" # admin
  get "/suppliers" => "suppliers#index" # admin
  get "/suppliers/:id" => "suppliers#show" # admin
  post "suppliers" => "suppliers#create" # admin
  patch "suppliers/:id" => "suppliers#update" # admin
  delete "suppliers/:id" => "suppliers#destroy" # admin
  post "/users" => "users#create" 
  post "/sessions" => "sessions#create"
  post "/orders" => "orders#create" # customer
  get "/orders" => "orders#index" # customer
end
