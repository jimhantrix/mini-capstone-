Rails.application.routes.draw do
  #1
  get "/products" => "products#index"
  #2
  post"/search" => "products#search"
  #3
  get "/products/new" => "products#new"
  #4
  post "/products" => "products#create"
  #5
  get "/products/:id" => "products#show"
  #6
  get "/products/:id/edit" => "products#edit"
  #7
  patch "/products/:id" => "products#update"
  #8
  delete "products/:id" => "products#destroy"
  #9
  get "/images/new" => "images#new"
  #10
  post "/images" => "images#create"
  #11
  get "/signup" => "users#new"
  #12
  post "/users" => "users#create"
  #13
  get "/login" => "sessions#new"
  #14
  post "/login" => "sessions#create"
  #15 
  get "/logout" => "sessions#destroy"
  #16 
  post "/orders" => 'orders#create'
  #17
  get "/orders/:id" => "orders#show"
  #18
  get "/carted_products" => "carted_products#index"

  post"carted_products" => "carted_products#create"

  
end