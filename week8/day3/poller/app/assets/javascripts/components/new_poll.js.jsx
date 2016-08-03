var NewPoll = React.createClass({
    getInitialState: function () {
        return {
            user_id: null,
            name: "",
            nameError: null,
            descriptionError: null,
            descriptionCount: 0,
            description: "Hello WOrld"
        };
    },

    validateName: function (e) {
        if (e.target.value.length <= 4) {
            this.setState({
                nameError: "Name is not long enough"
            });
        } else {
            this.setState({ nameError: null });
        }

        this.setState({ name: e.target.value });
    },

    validateDescription: function (e) {
        if (e.target.value.length >= 50) {
            this.setState({ 
                descriptionError: "Description LIMIT REACHED: ERROR 724782479 [ Only 200 characters are allowed ]" 
            });
        } else {
            this.setState({ descriptionError: null, description: e.target.value  });
        }

        this.setState({ descriptionCount: e.target.value.length});
    },

    handleSubmit: function () {
        if (this.state.nameError !== null || this.state.descriptionError !== null || this.state.userID === null) {
            this.setState({
                formError: "You cannot submit the form until you fix the errors."
            });
        } else {
            $.ajax({
                url: "/polls",
                method: "POST",
                dataType: "JSON",
                data: {
                    poll: {
                        name: this.state.name,
                        user_id: this.state.userID,
                        description: this.state.description
                    }
                }
            }).done(function (response) {
                //do something when finished???
                console.log(response);
            }.bind(this));
        }
    },

    renderDescriptionErrors: function () {
        if (this.state.descriptionError === null) {
            return <span/>;
        } else {
            return <span className="errors">{this.state.descriptionError}</span>
        }
    },

    renderNameErrors: function () {
        if (this.state.nameError === null) {
            return <span/>;
        } else {
            return <span className="errors">{this.state.nameError}</span>
        }
    },

    renderCount: function () {
        return (<span className="count">{200 - this.state.descriptionCount} remaining</span>);
    },

    render: function () {
        return (
            <div className="modal-content">
                <h4>New Poll</h4>
                {this.state.formError}
                <div className="field">
                    <label htmlFor="name">Name</label>
                    {this.renderNameErrors()}
                    <input value={this.state.name} onChange={this.validateName} type="text" id="name" name="name" />
                </div>
                <div className="field">
                    <label htmlFor="user">User</label>
                    <select className="browser-default" name="user" id="user" value={this.state.userID} onChange={function (e) { this.setState({ userID: e.target.value })}.bind(this)}>
                        <option value="">  </option>
                        {this.props.users.map(function (user) {
                            return (<option value={user.id}>{user.name}</option>);
                        })}
                    </select>
                </div>
                <div className="field">
                    <label htmlFor="description">Description</label>
                    {this.renderDescriptionErrors()}
                    <textarea onChange={this.validateDescription} id="description" name="description" value={this.state.description} className="materialize-textarea" />
                    {this.renderCount()}
                </div>
                <div className="modal-footer">
                    <div onClick={this.handleSubmit} className="modal-action waves-effect waves-light btn-flat">Create</div>
                </div>
        </div>);
    }
});
