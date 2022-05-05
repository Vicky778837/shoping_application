Rails.application.routes.draw do
  get 'users/profile'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  resources 'products'
  get 'dashboards/index'

  resources :line_items
  devise_for :users
root 'dashboards#index'
 resources :adds

get 'carts/:id' => "carts#show", as: "cart"
delete 'carts/:id' => "carts#destroy"

get 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
 get 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
# post 'line_items' => "line_items#create"
# get 'line_items' => "line_items#show", as: "line_item"
# delete 'line_items/:id' => "line_items#destroy"
resources :orders

match '/add_to_cart', to: 'products#add_to_cart',  via: [:get, :post]


end
