Rails.application.routes.draw do

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
    end
  end

  root 'home#dashboard'
end
