Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/about', as: 'about'
  get 'category/:name', to: 'welcome#category', as: 'category'

  resources :posts
  resources :comments, only: [:create]
  resources :users, only: [:new, :create]

  get  'login', to: 'sessions#new',    as: 'login'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'welcome#index'
end
