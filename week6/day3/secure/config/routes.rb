Rails.application.routes.draw do
  resources :users

  get  '/login', to: 'sessions#new',   as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  root 'users#index'
end
