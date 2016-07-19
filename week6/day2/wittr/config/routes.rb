Rails.application.routes.draw do

  resources :users do
    resources :wits
  end

  namespace :api do
    resources :users do
      resources :wits
    end
  end

#  users_path     #=>  users#index
#  user_path(user) #=> users#show
#  edit_user_path(user) #=> users#edit
#
#  user_wits_path(user)     #=> wits#index
#  user_wit_path(user, wit) #=> wits#show
#  edit_user_wit_path(user, wit) #=> wits#edit
#
#  resource_resource_path
  #if resource name is singular, then the path helper needs an instance of that object passed in as an argument
  #if plural, nothing is needed

  root 'dashboard#index'
end
