class SessionCart
  DEFAULT_STORAGE_KEY = :cart_items

  attr_reader :session

  def initialize(session, storage_key_name = DEFAULT_STORAGE_KEY)
    @storage_key_name = storage_key_name
    @items   = session[@storage_key_name] || []
    @session = session
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

  def item_ids
    @items
  end

  def items
    @items.map { |id| Item.find(id) } unless @items.first.is_a?(Item)
  end

  private

  def update_session
    session[@storage_key_name] = @items
  end

  def raw_price
    Item.where(id: @items).pluck(:price).sum
  end
end
