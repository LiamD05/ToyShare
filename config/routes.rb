


Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  resources :toy_reservations   # Routes for managing toy reservations
  resources :toy_statuses      # Routes for managing toy statuses
  resources :toys              # Routes for managing toys
  resources :toy_types         # Routes for managing toy types
  resources :user_locations    # Routes for managing user locations
  resources :users             # Routes for managing users
  resources :locations         # Routes for managing locations
  root 'pages#home'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end