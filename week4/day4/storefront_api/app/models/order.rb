class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  def shipping_address
    Address.find_by(user_id: self.user_id)
  end
end
