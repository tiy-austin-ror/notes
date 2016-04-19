class User < ActiveRecord::Base
  has_many :posts
  has_many :tags, through: :posts
  has_secure_password
end
