Rails.application.routes.draw do

  get '/orders', to: 'orders#index'
  get '/orders/:id', to: 'orders#show'

  post '/orders', to: 'orders#create'
end
