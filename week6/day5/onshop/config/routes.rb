Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new',     as: 'new_login'
  post   '/login',  to: 'sessions#create',  as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :lineitems
  resources :orders
  resources :items do
    member do
      post   'cart_add',    to: 'items#add_to_cart',      as: 'add_to_cart'
      delete 'cart_delete', to: 'items#remove_from_cart', as: 'remove_cart'
    end
  end
  resources :users
  root 'items#index'
end
