Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  
  #get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  #get 'users/new'
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

end