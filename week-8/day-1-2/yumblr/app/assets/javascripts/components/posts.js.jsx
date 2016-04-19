var Posts = React.createClass({
  propTypes: {
    posts: React.PropTypes.array
  },

  render: function() {
    return (
      <div>
          Posts: {this.props.posts.forEach(function (post) {
              return (<Post imageUrl={post.image_url} body={post.body} />)
          })}
      </div>
    );
  }
});
