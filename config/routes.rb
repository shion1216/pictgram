Rails.application.routes.draw do
  get 'sessions/new'
  
  #get 'users/new'
  resources :users
  
  #get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
end