class Cart

  def initialize(items = session[:cart_items])
    @items = items || []
  end

  def add(item)
    @items.push(item)
    update_session #Everytime an item is added, update the session
  end

  def remove(item)
    @items.delete(item)
    update_session #Everytime an item is removed, update the session
  end

  def price
    raw_price / 100
  end

  def items
    @items.map { |id| Item.find(id) } unless @items.first.is_a?(Item)
  end

  private

  def update_session
    session[:cart_items] = @items
  end

  def raw_price
    Item.where(id: @items).pluck(:price).sum
  end
end
