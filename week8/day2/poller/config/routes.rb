Rails.application.routes.draw do

  resources :users

  resources :polls do
    resources :questions do
      member do
        get :detailed
      end
      resources :answers
    end
  end

  root 'polls#index'
end
