Rails.application.routes.draw do
  get 'sessions/sign_in'
  post 'sessions/authenticate'

  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
