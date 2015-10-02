Rails.application.routes.draw do
  resources :lineitems
  resources :orders
  resources :items
  resources :users

  post '/items/cart/add/:id', to: 'items#add_to_cart', as: 'add_to_cart'
  delete '/items/cart/delete/:id', to: 'items#remove_from_cart', as: 'remove_cart_item'
end
