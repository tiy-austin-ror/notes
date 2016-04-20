
var PostCount = React.createClass({
  renderAnimation: function () {
    return { __html: "<span class='animate'>" + this.props.count + "</span>" };
  },

  render: function () {
    return (<h4>Post(s) <span dangerouslySetInnerHTML={this.renderAnimation()} /></h4>);
  }
});

var Posts = React.createClass({
  propTypes: {
    posts: React.PropTypes.array
  },

  getInitialState: function () {
    return {
      filterQuery: '',
      postCount: this.props.posts.length,
      posts: this.props.posts
    };
  },

  handleChange: function (event) {
    var postCount = this.state.posts.filter(function (post) {
        return post.body.match(event.target.value) || post.image_url.match(event.target.value)
    }).length;

    this.setState({
      filterQuery: event.target.value,
      postCount: postCount
    });
  },

  addToPosts: function (post) {
    var posts = this.state.posts;
    posts.unshift(post);
    this.setState({
      posts: posts
    });
  },

  render: function() {
    var that = this;
    return (
      <div>
        <hr/>
        <NewPost addToPosts={this.addToPosts} />
        <label>Filter Posts
          <input value={this.state.filterQuery} onChange={this.handleChange} type='text' className='form-control' placeholder='cat' />
        </label>
        <hr/>
        <PostCount count={this.state.postCount} />
        <table className='table table-hover table-bordered'>
          <thead>
            <tr>
              <th> Image </th>
              <th> Description </th>
            </tr>
          </thead>
          <tbody>
            {this.state.posts.map(function (post) {
              if (post.body.match(that.state.filterQuery) ||
                  post.image_url.match(that.state.filterQuery)) {
                return (<Post
                  key={post.id}
                  imageUrl={post.image_url}
                  body={post.body}
                  filterQuery={that.state.filterQuery}
                  />)
              }
            })}
          </tbody>
        </table>
      </div>
    );
  }
});
