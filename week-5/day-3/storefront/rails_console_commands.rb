title: "My Cool Post",
editor: "Justin",
body: "blah blah blah blah",
created_at: Tue, 29 Mar 2016 16:39:34 UTC +00:00,
updated_at: Tue, 29 Mar 2016 16:44:08 UTC +00:00>,
#<Post:0x007fb94d4c20a8
id: 2,
title: "Super Cool",
editor: "Jake",
body: "foobar",
created_at: Tue, 29 Mar 2016 16:45:10 UTC +00:00,
ls
Post
Post.methods
(Post.methods - Object.methods).count
(Post.methods - Object.methods)
Post.first
Post.second
Post.third
Post.fourth
Post.fourth!
Post.fourth
exit
Post.all
exit
Post.destroy_all
Post.create!
exit
Address.where(state: "WY")
Address.join(:users)
Address.joins(:users)
Address.joins(:users).where(first_name: "Virginie")
Address.joins(:users).where(first_name: "Virginie").first
Address.joins('"users"').where(first_name: "Virginie").first
Address.first
Address.joins('"users"').where(' "users".first_name = "Virginie" ').first
Address.joins('JOIN "users"').where(' "users".first_name = "Virginie" ').first
Address.joins('JOIN "users"').where(' "users".first_name = "Virginie" ')
Address.joins('JOIN "users" ON "users".id = "addresses".user_id').where(' "users".first_name = "Virginie" ')
User.all
Order.all
Item.joins('JOIN "orders" ON "orders".item_id = "items".id')
Item.joins('JOIN "orders" ON "orders".item_id = "items".id').where(category: "Books")
Order.joins('JOIN "orders" ON "orders".item_id = "items".id').where(category: "Books")
Order.joins('JOIN "orders" ON "orders".item_id = "items".id').where(category: "Books").first
Order.joins('JOIN "orders" ON "orders".item_id = "items".id').where(' "items".category ="Books"').first
Order.joins('JOIN "items" ON "orders".item_id = "items".id').where(' "items".category = "Books" ').first
Order.joins('JOIN "items" ON "orders".item_id = "items".id').where(' "items".category = "Books" ')
Order.joins('JOIN "items" ON "orders".item_id = "items".id').where(' "items".category = "Books" ').sum
Order.joins('JOIN "items" ON "orders".item_id = "items".id').where(' "items".category = "Books" ').sum(1, 2)
Order.joins('JOIN "items" ON "orders".item_id = "items".id').where(' "items".category = "Books" ')
Order.sum(' "items".price * "orders".quantity ').joins(' JOIN "items" ON "orders".item_id = "items".id ')
Item.first
Order.references("items").sum(' "items".price * "orders".quantity ').joins(' JOIN "items" ON "orders".item_id = "items".id ')
Item.first
Order.sum(' "items".price * "orders".quantity ').joins(' INNER JOIN "items" ON "orders".item_id = "items".id ')
Order.joins(' INNER JOIN "items" ON "orders".item_id = "items".id ')
Order.joins(' INNER JOIN "items" ON "orders".item_id = "items".id ').sum(' "items".price * "orders".quantity ')
Order.joins(' INNER JOIN "items" ON "orders".item_id = "items".id ').sum('"items".price * "orders".quantity')
Order.joins('INNER JOIN items ON orders.item_id = items.id').sum('items.price * orders.quantity')
Order.joins('INNER JOIN items ON orders.item_id = items.id').sum('items.price * orders.quantity').where('"items".category = \'Books\' ')
Order.joins('INNER JOIN items ON orders.item_id = items.id').where(' "items.category = Books ').sum('items.price * orders.quantity')
Order.joins('INNER JOIN items ON orders.item_id = items.id').where(' "items".category = Books ').sum('items.price * orders.quantity')
Order.joins('INNER JOIN items ON orders.item_id = items.id').where(' "items".category = \'Books\' ').sum('items.price * orders.quantity')
%{hello type}
Time.now
%{ Hello #{Time.now} }
Order.joins('INNER JOIN items ON orders.item_id = items.id').where(' "items".category = \'Books\' ').sum('items.price * orders.quantity')
Order.sum('items.price * orders.quantity')
Order.joins("items").sum('items.price * orders.quantity')
Order.joins(", items").sum('items.price * orders.quantity')
exit
User.first
User.first.orders
Item.first.orders
Address.last.user
User.find(5)
eldon = _
eldon.orders
eldon.orders.where(quantity: 2)
eldon.orders.where("quantity > 1")
Item.min(:price)
Item
Item.minimum(:price)
Item.minimum(:price).where(category: "Books")
Item.where(minimum: "Books").minimum(:price)
Item.where(category: "Books").minimum(:price)
Item.select(:all).where(category: "Books").minimum(:price)
Item.select("*").where(category: "Books").minimum(:price)
Item.where(category: "Books").minimum(:price)
Address.find_by_street("6439 Zetta Hills").user
Address.find_by_street("6439 Zetta Hills").user.addresses
Address.find_by_street("6439 Zetta Hills").user.address
Address.find_by_street("6439 Zetta Hills").users.address
Address.find_by_street("6439 Zetta Hills")
Address.find_by(street: 6439 Zetta Hills')
Address.find_by(street: "6439 Zetta Hills")
Address.new.methods
Address.methods
Address.methods.select { |x| x =~ /find_by/ }
Address.find_by_city("New York")
Address.methods.select { |x| x =~ /find_by/ }
User.first.attributes
user_attrs = _
user_attrs
user_attrs.first_name
user_attrs["first_name"]
class Hash
  def method_missing(method_name, *args, &block)
    if keys.map(&:to_sym).include?(method_name.to_sym)
      self[method_name]
    else
      super(method_name, *args, &block)
    end
  end
end
User.first.attributes
user_attrs = _
user_attrs.first_name
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert[x] }
    super(meth, *args, &block) if num_from_name.any? { |x| x.nil? }
    self[num_from_name.join('').to_i]
  end
end
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert[x] }
    super(meth, *args, &block) if num_from_name.any? { |x| x.nil? }
    self[num_from_name.join('').to_i]
  end
end
["Justin", "Aaron", "Abby", "Jess"]
["Justin", "Aaron", "Abby", "Jess"].first
["Justin", "Aaron", "Abby", "Jess"].one
["Justin", "Aaron", "Abby", "Jess"].two
["Justin", "Aaron", "Abby", "Jess"].three
Array('a'..'z')
Array('a'..'z').two_two
exit
User.first
User.first.orders
Item.first
Item.first.orders
Item.first.orders.map do |order|
  order.user
end
User.joins("JOIN orders ON users.id = orders.user_id JOIN items ON items.id = orders.item_id").where("items.id = 1")
exit
Item.users(1)
Item.users(10)
Item.users(11)
Item.users(46)
exit
Item.users(1)
Item.first
Item.first.users
exit
Item.find(24)
shirt = Item.find(24)
shirt.orders
shirt.users
shirt = Item.find(24)
shirt.users.pluck(:first_name)
shirt.users.pluck(:first_name, :last_name)
shirt.users.map { |x| x.first_name }
exit
Order.first
o = _
o
o.user
o.addresses
exit
Item.first.orders.where(quantity: 3)
exit
