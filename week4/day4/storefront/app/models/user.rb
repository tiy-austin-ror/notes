class User < ApplicationRecord
  EMAIL_RE =  /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  has_many :addresses
  has_many :orders
  has_many :purchased_items, source: :item, through: :orders

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: EMAIL_RE }

  #def addresses
  #  Address.where(user_id: self.id)
  #end
end
