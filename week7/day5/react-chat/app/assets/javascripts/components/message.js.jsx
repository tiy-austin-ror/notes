var Message = React.createClass({
  render: function () {
    return (
      <div className='message col s12'>
        <div className='row'>
          <div className='col s3'>
            <strong>{this.props.message.user.username}</strong>
          </div>
          <div className='col s9'>
            <p>{this.props.message.body}</p>
            <small>{this.props.message.created_at}</small>
          </div>
        </div>
      </div>
    );
  }
});
