Rails.application.routes.draw do
  get 'sessions/new'
  
  #get 'users/new'
  resources :users
  
  #get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
end