class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  has_many :editors
  has_many :collaborations, through: :editors, source: :post
  
  validates :name, presence: true
  has_secure_password
end
