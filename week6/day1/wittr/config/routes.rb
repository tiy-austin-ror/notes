Rails.application.routes.draw do

  resources :users do
    resources :wits
  end

  root 'dashboard#index'
end
