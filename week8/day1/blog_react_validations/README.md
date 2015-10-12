## Blog

### Models
 - Post
    - has many comments
    - title
    - body
    - timestamps
    - category
 - Comment
    - belongs to post
    - username
    - body
    - timestamps

### Controllers
 - welcome controller
    - index
    - about
 - posts controller
    - crud
 - comments controller
    - crud

### Views
  /root  => welcome/index
  /about => welcome/about
  /posts => posts/index
  /post/id => posts/show
  /posts/new => posts/new
   ** extra **
  /posts/id/edit => posts/edit
  /posts/id/delete => posts/destroy


