Rails.application.routes.draw do
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
