Rails.application.routes.draw do
  resources :reviews
  resources :favorites
  resources :locations
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'

end
