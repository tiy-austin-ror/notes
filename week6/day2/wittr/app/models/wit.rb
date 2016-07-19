class Wit < ApplicationRecord
  belongs_to :user

  geocoded_by :ip_address
  after_validation :geocode
end
