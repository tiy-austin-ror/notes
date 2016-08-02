var Poll = React.createClass({

  getInitialState: function () {
    return {
       questions: "closed",
       answers: "closed"
    };
  },

  viewQuestions: function () {
    if (this.state.questions === "opened") {
        var questionState = "closed";
    } else {
        var questionState = "opened";
    }
    this.setState({
       questions: questionState
    });
  },

  viewResults: function () {
    if (this.state.answers === "opened") {
        var answerState = "closed";
    } else {
        var answerState = "opened";
    }
    this.setState({
       answers: answerState
    });
  },

  render: function() {
    return (
        <div className="col s12 m12 l6">
              <div className="card">
                <div className="card-content black-text">
                  <span className="card-title">{this.props.poll.name}</span>
                  <p>
                    <small>{this.props.poll.questions.length} Questions</small>
                  </p>
                </div>
                <div className="card-action">
                  <a className="" href={"/polls/" + this.props.poll.id}>Take Poll</a>
                  <a onClick={this.viewResults}>View Results</a>
                  <a onClick={this.viewQuestions}>
                    View Questions <i className="material-icons right">expand_less</i>
                  </a>
                </div>
                {this.props.poll.questions.map(function (question) {
                  return <PollResults key={question.id} question={question} answers={this.state.answers} />
                }.bind(this))}
                <div className={"poll-questions " + this.state.questions}>
                  <ol className="collection">
                     {this.props.poll.questions.map(function (question) {
                       return (<li key={question.id} className="collection-item">{question.body}</li>);
                     })}
                  </ol>
                </div>
              </div>
            </div>
    );
  }
});

var PollResults = React.createClass({
  getInitialState: function () {
    return {
      questionDetails: {
        recent: []
      }
    }
  },

  updateQuestionDetails: function () {
    var q = this.props.question;
    $.getJSON("/polls/" + q.poll_id + "/questions/" + q.id + "/detailed", function (response) {
      this.setState({
        questionDetails: response
      });
    }.bind(this));
  },

  componentDidMount: function () {
    this.interval = setInterval(this.updateQuestionDetails, 10000);
  },

  componentWillMount: function () { // This fn will run right before the component is displayed
    var q = this.props.question;
    $.getJSON("/polls/" + q.poll_id + "/questions/" + q.id + "/detailed", function (response) {
      this.setState({
        questionDetails: response
      });
    }.bind(this));
  },

  render: function () {
    return (
      <div className={"poll-answers " + this.props.answers}>
          <ul className="collection">
              <li className="collection-item">
                  <div className="row">
                    <div className="col m3">
                      <small>Question</small><br />
                      {this.props.question.body}
                    </div>
                    <div className="col m3">
                      <small>Mode</small><br />
                      <h5>{this.state.questionDetails.mode}</h5>
                    </div>
                    <div className="col m3">
                      <small>Average</small><br />
                      <h5 className="answer-average">{this.state.questionDetails.average}</h5>
                    </div>
                    <div className="col m3">
                      <small>Recent Answers</small><br />
                      {this.state.questionDetails.recent.map(function (answer, index) {
                        return <span key={index} className={"rating fade-" + index }>{answer.rating}</span>
                      })}
                    </div>
                  </div>
              </li>
         </ul>
      </div>
    );
  }
});
