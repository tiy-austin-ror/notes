class User < ActiveRecord::Base
  has_secure_password

  has_many :messages
  has_many :rooms, through: :messages

  validates :username, exclusion: {
    in: (%w(users rooms messages about login logout) | Room.distinct.pluck(:name)),
    message: 'That name is reserved by the app and cannot be used.'
  }
  validates :username, uniqueness: true
end
