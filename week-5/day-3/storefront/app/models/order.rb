class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  has_many :addresses, through: :user
end
