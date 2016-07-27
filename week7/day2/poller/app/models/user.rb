class User < ApplicationRecord
  has_secure_password

  has_many :polls
  has_many :answers
end
