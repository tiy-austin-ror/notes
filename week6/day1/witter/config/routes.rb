Rails.application.routes.draw do
  resources :users do
    resources :wits #'/users/:user_id/wits/:id'
  end
  resources :wits, only: [:index, :show]

  root 'wits#index'
end
