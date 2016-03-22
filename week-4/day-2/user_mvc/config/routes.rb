module Router
  def Router.route(url_obj)
    [
      Router.get(:users, :index, url_obj),
      Router.get(:users, :show, url_obj)
    ].select(&:itself).first
  end

  private

  def Router.get(resource, action, url_obj)
    if url_obj.resource == resource &&
       url_obj.action == action
       UsersController.new.send(action)
    end
  end
end

#get('/users', { to: 'users#index', as: "home_page"})
#get '/users/:id', to: 'users#show'
#post '/users', to: 'users#create'
