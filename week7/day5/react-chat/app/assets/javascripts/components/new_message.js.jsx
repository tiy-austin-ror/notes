var NewMessage = React.createClass({
  getInitialState: function () {
    return {
      messageText: ''
    }
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
        console.log('yay!');
      }.bind(this)
    });
    this.setState({ messageText: '' });
  },
  handleChange: function (e) {
    this.setState({
      messageText: e.target.value
    });
  },
  render: function () {
    return (<div className='row'>
                <div className='col s12'>
                  <section className='new-message-form'>
                    <div className="input-field col s9 c9">
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
