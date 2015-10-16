Rails.application.routes.draw do
  get '/courses', to: 'courses#index'

  get '/courses/:id', to: 'courses#show'
  get '/courses/:id/students', to: 'courses#students'

  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'

  get '/about', to: 'welcome#about'

  root 'students#index'
end
