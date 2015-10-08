var Navigation = React.createClass({
  render: function() {
    return (<nav>
             <Link url={'/home'} name={'Home'}/>
             <Link url={'/posts'} name={'All Posts'}/>
             <Link url={'/posts/new'} name={'New Posts'}/>
            </nav>);
  }
});
