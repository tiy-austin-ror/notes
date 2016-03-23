class TweetsController < ApplicationController
  def index
    #f = File.read('app/views/test.html')
    #render f, status: "200 OK", as: "text/html"

    render_template 'app/views/test.html'
    # render "I am a tweet!".to_json, status: "404 NOT FOUND"
    # render params.to_json
    # Use the render method now to specify what should be rendered to the screen
    # this 'render' method fills the request object.
    # By default, all render calls will make the status "200 OK", you only need
    # to add a status if you are changing from "200 OK" to something else.
  end
end
