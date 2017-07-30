Rails.application.routes.draw do
  resources :users
  resources :restaurants
  #Landing page
  root 'landing#index'

  # Crud routes for reviews and restaurants
  resources :reviews
  resources :restaurants
  resorces :users
end
