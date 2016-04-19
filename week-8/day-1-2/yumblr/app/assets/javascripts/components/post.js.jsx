var Post = React.createClass({
  propTypes: {
    imageUrl: React.PropTypes.string,
    body: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Image Url: <img src={this.props.imageUrl}/></div>
        <div>Body: {this.props.body}</div>
      </div>
    );
  }
});
