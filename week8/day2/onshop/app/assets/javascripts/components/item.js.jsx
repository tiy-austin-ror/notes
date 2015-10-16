var Item = React.createClass({
  render: function () {
    var item = this.props.item;
    return (
      <div className='item col-md-4'>
        <img src={item.img_url} className='icon'/>
        <p className='title'>
          <a href={'/items/' + item.id}>{item.name}</a>
          {item.display_price}
        </p>
        <p className='center'>
          <a className="btn btn-primary btn-xs"
            rel="nofollow"
            data-method="POST"
            href={"/items/" + item.id + "/cart_add"}>Add To Cart</a>
        </p>
       </div>
    );
  }
});
