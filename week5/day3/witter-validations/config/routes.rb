Rails.application.routes.draw do
  resources :users do
    resources :wits
  end
  resources :wits, only: [:index, :show]

  root 'wits#index'
end
