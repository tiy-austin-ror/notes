class Wit < ActiveRecord::Base
  belongs_to :user
  validates :message, length: { in: 2..160 }
end
