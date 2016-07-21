Rails.application.routes.draw do
  resources :users
  post 'sessions/authenticate'
end
