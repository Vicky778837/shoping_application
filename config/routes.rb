Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'dashboards#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
