var NewMessage = React.createClass({
  getInitialState: function () {
    return {
      messageText: ''
    };
  },

  submit: function () {
    $.ajax({
      url: '/messages',
      method: 'POST',
      dataType: 'JSON',
      data: {
        message: {
          body: this.state.messageText,
          room_id: this.props.roomID
        }
      },
      success: function (response) {
        console.log('yay! Message successfully sent.');
      }
    });

    this.setState({ messageText: '' }); // Clear the message text when the message has been sent.
  },

  handleChange: function (e) { // This 'handleChange' function is called every time the input field is changed.
    this.setState({
      messageText: e.target.value // Everytime the value of the input has changed take its value and put it inside our state object.
                                    // This allows us to later send that saved input to the server.
    });
  },

  render: function () {
    return (<div className='row'>
                <div className='col s12'>
                  <section className='new-message-form card-panel'>
                    <div className="input-field col s11 c11">
                      <input placeholder="hello world"
                        id="message[body]"
                        type="text"
                        autofocus="true"
                        className="validate"
                        onChange={this.handleChange}
                        value={this.state.messageText}/>
                      <label htmlFor="message[body]">Message</label>
                    </div>
                    <div className='input-field col s1 c1'>
                      <button onClick={this.submit} className="btn waves-effect waves-light btn-small" type="submit" name="action">
                        <i className="material-icons right">send</i>
                      </button>
                    </div>
                  </section>
                </div>
            </div>);
  }
});
