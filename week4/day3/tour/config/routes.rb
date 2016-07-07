Rails.application.routes.draw do

  get '/posts', to: 'posts#index'
  get '/posts/:id', to: 'posts#show'

end
