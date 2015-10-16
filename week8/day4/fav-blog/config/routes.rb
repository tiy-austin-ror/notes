Rails.application.routes.draw do
  resources :favorites
  resources :blogs
  resources :users
  root 'blogs#index'
end
