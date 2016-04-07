Rails.application.routes.draw do

  get '/sign_in', to: 'sessions#sign_in', as: 'sign_in'
  post '/sign_in', to: 'sessions#create'
  get '/sign_out', to: 'sessions#sign_out', as: 'sign_out'
  delete '/sign_out', to: 'sessions#destroy'

  resources :users
  resources :editors, only: [:create]

  namespace :api do
    resources :posts
  end

  resources :posts do
    resources :comments

    collection do
      get 'archived' #View "all" the archived posts
    end

    member do
      put 'publish' # publish a single post
      get 'add_collaborator'
    end
  end

  root 'home#dashboard'
end
