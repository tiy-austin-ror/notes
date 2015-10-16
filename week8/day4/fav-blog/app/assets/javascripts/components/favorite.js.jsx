var Favorite = React.createClass({
  getInitialState: function () {
    return {
      finished: false
    };
  },
  onClick: function (e) {
    $.ajax({
      method: "POST",
      url: '/favorites',
      dataType: 'JSON',
      data: {
        favorite: {
          blog_id: this.props.blogID
        }
      }
    }).done(function () {
      this.setState({ finished: true });
    }.bind(this));
  },

  render: function() {
    if (this.state.finished) {
      return (<div className=''>Favorited</div> );
    } else {
      return (<div className='btn btn-xs btn-default' onClick={this.onClick}>Favorite</div> );
    }
  }
});
