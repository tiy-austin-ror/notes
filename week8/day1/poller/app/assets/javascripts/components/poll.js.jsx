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
                    View Questions 
                    <i className="material-icons right">expand_less</i>
                  </a>        
                </div>
                <div className={"poll-answers " + this.state.answers}>
                    <ul className="collection">
                        <li className="collection-item">
                            <div className="row">
                              <div className="col m3">
                                <small>Question</small><br />
                                Do you believe the thing?
                              </div>
                              <div className="col m3">
                                <small>Mode</small><br />
                                <h5>2</h5>
                              </div>
                              <div className="col m3">
                                <small>Average</small><br />
                                <h5 className="answer-average">2.86</h5>
                              </div>
                              <div className="col m3">
                                <small>Recent Answers</small><br />
                                  <span className="rating fade-0">3</span>
                              </div>
                            </div>
                        </li>
                   </ul>
                </div>
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
