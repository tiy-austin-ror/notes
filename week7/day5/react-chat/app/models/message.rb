class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :room

  validates :body, length: { minimum: 1 }
end
