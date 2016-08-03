var QuestionInput = React.createClass({

    getInitialState: function () {
        return {
            currentAnswer: this.props.currentAnswer,
            loading: false
        };
    },

    sendAnswer: function (n, event) {
        this.setState({
            loading: true
        });
        var q = this.props.question;
        var url = ["/polls", q.poll_id, "questions", q.id, "answers"].join("/");
        $.ajax({
            url: url,
            method: "POST",
            data: {
                answer: {
                    rating: n,
                    user_id: this.props.user.id
                }
            }
        }).done(function (response) {
            this.setState({
                currentAnswer: response,
                loading: false
            });
        }.bind(this));
    },

    classes: function (n) {
        var classNames = "btn ";
        if (this.state.currentAnswer.rating === n) {
            classNames += "red";
        } else if (this.props.currentAnswer.rating === n) {
            classNames += " yellow";
        }
        return classNames;
    },

    renderLoading: function () {
        if (this.state.loading) {
            return (
              <div className="preloader-wrapper active">
                <div className="spinner-layer spinner-red-only">
                  <div className="circle-clipper left">
                    <div className="circle"></div>
                  </div><div className="gap-patch">
                    <div className="circle"></div>
                  </div><div className="circle-clipper right">
                    <div className="circle"></div>
                  </div>
                </div>
              </div>
            );
        } else {
            return (<span/>);
        }
    },

    render: function () {
        return (<li className="collection-item">
            <p>{this.props.question.body}</p><br />
            {this.props.buttonRange.map(function (n) {
                return (
                    <div key={n} className={this.classes(n)} onClick={this.sendAnswer.bind(this, n)}>{n}</div>
                );
            }.bind(this))}
            {this.renderLoading()}
        </li>);
    }
});
