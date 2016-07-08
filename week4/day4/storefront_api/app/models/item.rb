class Item < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders # :orders is looking at the other association named :orders

  validates :title, length: { minimum: 6 }
  validates :category, presence: true
  validates :description, length: { maximum: 14500, message: "No pirating novels allowed" }
  validates :price, numericality: { greater_than: 0 }

  # The has many through above does what this does below, but better-er
  def users_who_bought_me
    User.joins("""INNER JOIN orders
                  ON orders.user_id = users.id
                  INNER JOIN items
                  ON items.id = orders.item_id""").where("orders.item_id = ?", self.id)
  end
end

