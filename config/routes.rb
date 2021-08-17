Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
 root 'pages#index'
  get 'pages/help'

  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to:'favorites#create'
  delete '/favorites/delete', to: 'favorites#destroy'

  get '/comment/new', to: 'comments#new'
  post '/comments', to: 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
