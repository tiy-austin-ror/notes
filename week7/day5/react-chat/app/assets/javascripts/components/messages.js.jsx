var Messages = React.createClass({
  getInitialState: function () { // You can think of this as initialize in a ruby class
    return {
      messages: [] // When a new 'Messages' component is created, give it an empty array to store all the messages for that room.
    };
  },

  componentDidMount: function () { // React calls this function as soon as the component is on the screen
    this.getMessages();
    this.interval = setInterval(this.getMessages, 2000); // Tell js to call the 'getMesssages' function once every 2000 milliseconds
  },

  getMessages: function () { // This function will use jQuery and AJAX to retrieve all the messages for a given room as json
    $.getJSON('/rooms/' + this.props.roomID, function (data) {
      this.setState({
        messages: data
      });
    }.bind(this)); // Because we need to use 'this' inside of a function that is *already* inside a function, we need to tell js which 'this' we are talking about. Bind helps us do that.
  },

  componentDidUpdate: function () {
    //var messages = $('.messages');
    //messages[0].scrollTop = messages[0].scrollHeight;
    // Pure jQuery version

    var messageNode = this.refs.messageContainer.getDOMNode();
    messageNode.scrollTop = messageNode.scrollHeight;
  },

  componentWillUnmount: function() {
    clearInterval(this.interval); // Stop calling the function 'getMessages' when the component leaves the screen.
  },

  render: function () {
    if (this.state.messages.length === 0) {
      return (<div>Loading...</div>);
    } else {
      return (
        <section className='messages' ref='messageContainer'>
          {this.state.messages.map(function (e, i) { // Loop through all the messages we have and turn them into 'Message' components
            return (<Message key={i} message={e} />);
          })}
        </section>
      );
    }
  }
});
