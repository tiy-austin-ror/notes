class Post < ActiveRecord::Base
  has_many :comments
  validates :title, :category, presence: {  message: "I am an optional message" }
  validates :body, length: { minimum: 5, message: "Are you sure you didnt' want this longer?" }
end
