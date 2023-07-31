Rails.application.routes.draw do
  root 'home#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/admin', to: 'admin#index', as: :admin
end

