var UserSearch = React.createClass({

  getInitialState: function () {
    return {
      search: '',
      results: [],
      currentUser: null
    }
  },

  handleChange: function (event) {
    var that = this;
    this.setState({
      search: event.target.value
    });

    if (event.target.value.length >= 2) {
      var url = '/users/search?query=' + event.target.value;
      $.getJSON(url, function (response) {
        that.setState({
          results: response
        });
      });
    }
  },

  handleClick: function (id) {
    var that = this;
    $.getJSON('/users/' + id, function (response) {
      that.setState({
        currentUser: response,
        results: [],
        search: response.username
      });
    });
  },

  renderCurrentUser: function () {
    if (this.state.currentUser !== null) {
      return (
        <section>
          <h3>{this.state.currentUser.username}</h3>
          <hr />
          <h4>{this.state.currentUser.username}'s Posts</h4>
          <table>
            <thead>
              <tr><th>Image</th><th>Description</th></tr>
            </thead>
            <tbody>
              {this.state.currentUser.posts.map(function (post) {
                return (<Post
                  key={post.id}
                  imageUrl={post.image_url}
                  body={post.body}
                  filterQuery={''}
                  />);
              })}
            </tbody>
          </table>
        </section>
      );
    } else {
      return (<span />);
    }
  },

  render: function() {
    var that = this;
    return (
      <div>
        <label>
          <p>Find User by Username:</p>
          <input type="search"
            onChange={this.handleChange}
            value={this.state.search}
            className="form-control large"
            placeholder="John Doe" />
        </label>
        {this.state.results.map(function (user) {
          return (
            <div key={user.id} onClick={that.handleClick.bind(that, user.id)} className='result'>{user.username}</div>
          );
        })}
        {this.renderCurrentUser()}
      </div>
    );

  }
});
