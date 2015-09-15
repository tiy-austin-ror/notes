# RAILS DAY!

## Outline
- Homework Review
- RAILS!
  - Install Rails
  - Walk through rails pieces
  - Starting a rails project (together)
    - `rails g`
      - Generating a rails model creates a migration automatically
    - `rails s`
    - `rake db:create`
    - `rake db:migrate`
    - `rake db:rollback`
    - `rake notes`
  - Debugging Rails applications
    - logs/
    - `binding.pry` can be placed inside controllers
    - Web console
  - Routes
    - HTTP Verbs `get, post, put, delete`
    - Dynamic Routes `get '/users/:id', to: 'users#show'`
    - How to point a URL to a controller action `get '/users/', to: 'users#index'`
    - Root URL `root: 'users#index'`
  - Controllers
    - Actions (are methods on controllers)
    - Every action is expected to render something
      - `render text: 'foo', status: 200`
      - `render text: 'not found', status: 404`
      - `render json: { foo: 'hi' }`, status: 200`
      - `render template: 'index.html', status: 200`
    - Only render 1x per action

## Resources
  - [Rails Guide: Routing](http://guides.rubyonrails.org/routing.html)
  - [Rails Guide: Controllers (real good)](http://guides.rubyonrails.org/action_controller_overview.html)
