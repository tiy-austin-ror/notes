## Outline
- Challenge: fizzbuzz on paper
- Homework Review
- More with Rails Routes and Controllers
  - Installing PostMan and JSON view
  - What are APIs
  - Using rails as an API
  - Diagram of Rails
  - Routes
    - rake routes
    - POST/PUT/DELETE routes
    - Routes with mudynamic segments
        - routes can have multiple dynamic segments!
    - Root route
    - namespaced routes
    - order dependent (more specific on top)
    - Reserved words on top
      - `get '/users/index'` needs to be above `get '/users/:id'` or else index will never be called.
  - Controllers
    - `render json:`
    - `collection.to_json`
    - `if tweet.save`
    - :unprocessable_entity (422)
    - private methods to DRY up our controllers
    - providing a consistent response
    - `errors` from active record objects
  - `rails g model Post title:string body:text`
  - Review of rescuing error messages

Homework: Rails Todo
