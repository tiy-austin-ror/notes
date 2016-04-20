'use strict';
var Ticker = React.createClass({
    getInitialState: function () {
        return { 
            clicks: 0 
        };
    },

    handleClick: function () {
        this.setState({ 
            clicks: this.state.clicks += 1 
        });
    },

    styles: function () {
        return {
            cursor: "pointer",
            userSelect: "none",
            WebkitUserSelect: "none",
            display: "inline-block"
        };
    },

    render: function () {
        return (
            <h2 onClick={this.handleClick} style={this.styles()}>
                {this.state.clicks}
            </h2>
        );
    }
});


