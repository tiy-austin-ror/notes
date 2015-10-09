Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new',     as: 'new_login'
  post   '/login',  to: 'sessions#create',  as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :messages, only: :create
  resources :rooms
  resources :users

  get '/:room_name', to: 'rooms#show',    as: :chatroom
  get '/:username',  to: 'users#profile', as: :profile

  root 'rooms#index'
end
