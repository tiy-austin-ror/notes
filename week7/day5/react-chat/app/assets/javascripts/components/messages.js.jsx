var Messages = React.createClass({
  getInitialState: function () {
    return {
      messages: []
    };
  },

  getMessages: function () {
    $.getJSON('/rooms/' + this.props.roomID, function (data) {
      this.setState({
        messages: data
      });
    }.bind(this));
    var messageNode = this.refs.messages.getDOMNode();
    messageNode.scrollTop = messageNode.scollHeight;
  },

  componentDidMount: function () {
    this.getMessages();
    this.interval = setInterval(this.getMessages, 2000);
  },

  componentWillUnmount: function() {
    clearInterval(this.interval);
  },

  render: function () {
    return (
      <section className='messages' ref='messages'>
        {this.state.messages.map(function (e, i) {
          return (<Message key={i} message={e} />);
        })}
      </section>
    );
  }
});
