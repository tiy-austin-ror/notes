Rails.application.routes.draw do

  get '/posts', to: 'posts#index'

  get '/posts/:id', to: 'posts#show'

  post '/posts', to: 'posts#create'

  delete '/posts/:id' , to: 'posts#destroy'

end

