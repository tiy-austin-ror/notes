var ValidatedInput = React.createClass({
  getInitialState: function () {
    return {
      className: '',
      errorField: ''
    };
  },

  getDefaultProps: function () {
    return {
      inputTitle: 'no title',
      placholder: 'lorum ipsom',
      errorMessage: "Too short",
      minChars: '10'
    };
  },

  handleChanged: function (event) {
    if (event.target.value.length < this.props.minChars) {
      this.setState({
        className: 'field-with-errors',
        errorField: this.props.errorMessage
      });
    } else {
      this.setState({
        className: '',
        errorField: ''
      });
    }
  },

  render: function () {
    return (
      <fieldset>
        <legend>{this.props.inputTitle}</legend>
        <input placeholder={this.props.placeholder} maxLength="50"
             size="50" type="text"
              onChange={this.handleChanged}
              className={this.state.className}
              name="post[title]" id="post_title" />
        <p className='errors'>{this.state.errorField}</p>
      </fieldset>
    );
  }
});
