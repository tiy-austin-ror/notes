Rails.application.routes.draw do
  get '/courses', to: 'courses#index'

  get '/courses/:id', to: 'courses#show'
  get '/courses/:id/students', to: 'courses#students'

  get '/students', to: 'students#index'

  get '/about', to: 'welcome#about'

  root 'students#index'
end
