Rails.application.routes.draw do
  root 'rooms#index'
  get 'signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  #delete '/signout', to: 'sessions#destroy'
  get '/signout', to: 'sessions#destroy', as: 'signout'

  resources :rooms do
    resources :messages
  end

  resources :users

end
