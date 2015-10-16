class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
end
#user_id
#item_id
