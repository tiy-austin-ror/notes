Rails.application.routes.draw do
  resources :users
  resources :wits
  #get 'wits/', to: 'wits#index'
  #... all 7 restful actions
  #post 'wits', to: 'wits#create'
  root 'wits#index'
end
