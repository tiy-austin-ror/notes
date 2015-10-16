class User < ActiveRecord::Base
  has_many :wits
  validates :name, :username, presence: true
end
