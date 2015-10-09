class Room < ActiveRecord::Base
  has_many :messages
  has_many :users, through: :messages

  validates :name, exclusion: {
    in: %w(users rooms messages about login logout),
    message: 'That name is reserved by the app and cannot be used.'
  }
  validates :name, uniqueness: true
end
