var Items = React.createClass({
  getDefaultProps: function () {
    return {
      items: []
    };
  },

  getInitialState: function () {
    return {
      items: this.props.items,
      search: ''
    };
  },

  handleChange: function (event) {
    var newItems = this.props.items.filter(function (item) {
      return (item.name.toLowerCase().indexOf(event.target.value.toLowerCase()) > -1);
    });
    this.setState({
      search: event.target.value,
      items: newItems
    });
  },

  render: function() {
    return (<section>
      <p>
        <input className='form-control' type='text'
          onChange={this.handleChange} value={this.state.search}
          placeholder="Filter"/>
      </p>
      {this.state.items.map(function (item) {
        return (<Item item={item} />);
      })}
    </section>);
  }
});
