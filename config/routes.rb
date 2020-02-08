Rails.application.routes.draw do
  resources :reviews
  resources :favorites
  resources :locations
  resources :users
  post '/users/:id/favorites', to: 'favorites#create' 
  post '/auth', to: 'auth#login'
  get '/persist', to: 'auth#persist'

end
