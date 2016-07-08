Rails.application.routes.draw do
  get    '/orders',     to: 'orders#index'
  get    '/orders/:id', to: 'orders#show'
  post   '/orders',     to: 'orders#create'
  put    '/orders/:id', to: 'orders#update'
  delete '/orders/:id', to: 'orders#destroy'
end
