class Message < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :body, length: { in: 10...1000 }
end
