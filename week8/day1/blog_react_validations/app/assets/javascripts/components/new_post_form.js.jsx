var NewPostForm = React.createClass({
  getInitialState: function () {
    return {

    };
  },

  render: function () {
    return (
      <div>
        <ValidatedInput inputTitle='Title' placeholder='My Cool Post'
           errorMessage='Post Title must be a minimum of 5 characters'
           minChars='5' />
        <ValidatedTextarea />
        <ValidatedInput inputTitle='Category' placeholder='My Category'
          errorMessage='Post Category must be at least 2 characters'
          minChars='2' />
        <ValidatedInput />
      </div>
    );
  }
});
