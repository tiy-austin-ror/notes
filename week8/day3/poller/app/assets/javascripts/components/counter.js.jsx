var Counter = React.createClass({

    getInitialState: function () {
        return {
            count: 0
        };
    },

    foobar: function () {
        if (this.state.count >= 50) {
            var newCount = 0;
        } else {
            var newCount = this.state.count + 1;
        }
        this.setState({
            count: newCount
        });
    },

    render: function() {
        if (this.state.count > 20) {
            return <h1 className="clicker" onClick={this.foobar}>{this.state.count}</h1>;
        } else if (this.state.count > 15) {
            return <h2 className="clicker" onClick={this.foobar}>{this.state.count}</h2>;
        } else if (this.state.count > 10) {
            return <h3 className="clicker" onClick={this.foobar}>{this.state.count}</h3>;
        } else if (this.state.count > 5) {
            return <h4 className="clicker" onClick={this.foobar}>{this.state.count}</h4>;
        } else {
            return <h5 className="clicker" onClick={this.foobar}>{this.state.count}</h5>;
        }
    }
});
