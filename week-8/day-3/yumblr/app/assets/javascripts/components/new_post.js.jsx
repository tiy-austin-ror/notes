var NewPost = React.createClass({

    getInitialState: function () {
        return {
            opened: false,
            imageURL: '',
            body: ''
        };
    },

    handleClick: function () {
       this.setState({
          opened: !this.state.opened
       });
    },

    handleURLChange: function (event) {
        this.setState({
          imageURL: event.target.value
        });
    },

    handleBodyChange: function (event) {
        this.setState({
           body: event.target.value
        });
    },



    handleSubmit: function () {
        $.ajax({
          method: "POST",
          url: '/posts.json',
          data: {
            post: {
              image_url: this.state.imageURL,
              body: this.state.body
            }
          }
        }).done(function (response) {
            this.handleClick();
            this.props.addToPosts(response);
        }.bind(this));
    },

    renderBody: function () {
        if (this.state.opened === true) {
            return (
                  <div>
                      <div className='btn btn-default pull-right' onClick={this.handleClick}>Cancel</div>
                      <Ticker />
                      <div className="form-group">
                        <label htmlFor="post_image_url">Image url</label>
                        <input className="form-control" type="text" onChange={this.handleURLChange} value={this.state.imageURL}/>
                      </div>
                      <div className="form-group">
                        <label htmlFor="post_body">Body</label>
                        <textarea className="form-control" onChange={this.handleBodyChange} value={this.state.body} />
                      </div>
                      <div className="actions">
                        <input type="submit" name="commit" value="Create Post" className="btn btn-primary" onClick={this.handleSubmit}/>
                      </div>
                  </div>
          );
        } else {
            return (<div className='btn btn-primary pull-right' onClick={this.handleClick}>New Post</div>);
        }

    },

    render: function() {
        return (
          <div>
              {this.renderBody()}
          </div>
        );
   }
});
