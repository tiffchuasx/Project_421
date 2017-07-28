Rails.application.routes.draw do
  resources :restaurants
  #Landing page
  root 'landing#index'

  #Display restaurants
  get '/restaurants/', to: 'restaurants#restaurants'


  # Crud routes for reviews and restaurants
  resources :reviews
  resources :restaurants
end
