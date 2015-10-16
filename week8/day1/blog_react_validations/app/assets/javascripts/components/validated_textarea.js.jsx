var ValidatedTextarea= React.createClass({
  getInitialState: function () {
    return {

    };
  },

  handleBodyChanged: function (event) {
    if (event.target.value.length < 50) {
      this.setState({
        bodyClassName: 'field-with-errors',
        bodyErrorField: 'Post Body must be a minimum of 50 characters'
      });
    } else {
      this.setState({
        bodyClassName: '',
        bodyErrorField: ''
      });
    }
  },

  render: function () {
    return (
      <fieldset>
        <legend>Body</legend>
        <textarea name="post[body]" id='post_body' rows='10' cols='45'
          onChange={this.handleBodyChanged}
          className={this.state.bodyClassName}
          placeholder='Lorum Ipsum...'>
        </textarea>
        <p className='errors'>{this.state.bodyErrorField}</p>
      </fieldset>
    );
  }
});
