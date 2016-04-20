var Post = React.createClass({
  propTypes: {
    filterQuery: React.PropTypes.string,
    imageUrl: React.PropTypes.string,
    body: React.PropTypes.string
  },

  getInitialState: function () {
    return {
      bodyText: this.props.body
    };
  },

  renderBody: function () {
    if (this.props.filterQuery.length > 1) {
      var replacement = "<mark style='padding:0; text-decoration:underline;'>" + this.props.filterQuery + "</mark>";
      var regexp = new RegExp(this.props.filterQuery, 'g');
      return { __html: this.props.body.replace(regexp, replacement) }
    } else {
      return { __html: this.props.body }
    }
  },

  renderLinksInBody: function () {
    // Only works if input contains exactly one or less link(s).
    var regexp = /(ftp|http|https):\/\/[^ "]+/;
    var matches = regexp.exec(this.props.body);
    if (matches === null) {
      return { __html: this.props.body };
    } else {
      return { __html: this.props.body.replace(regexp, "<a href=" + matches[0] + ">" + matches[0] + "</a>")};
    }
  },

  render: function() {
    return (
      <tr>
        <td><img src={this.props.imageUrl} width={200} /></td>
        <td dangerouslySetInnerHTML={this.renderBody()} />
      </tr>
    );
  }
});
