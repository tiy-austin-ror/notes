Rails.application.routes.draw do

  resources :posts
    # get 'posts',     to: 'posts#index'
    # get 'posts/new', to: 'posts#new'
    # get 'posts/:id', to: 'posts#show'
    # get 'posts/:id/edit', to: 'posts#edit'
    # post 'posts',         to: 'posts#create'
    # put 'posts/:id', to: 'posts#update'

  resources :comments, only: [:show, :create]

  root 'posts#index'
end
