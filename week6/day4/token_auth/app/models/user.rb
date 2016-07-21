require 'securerandom'

class User < ApplicationRecord
  has_secure_password
  before_create :set_auth_token


  private
  def set_auth_token
    if auth_token.nil?
      self.auth_token = SecureRandom.uuid.delete("-")
    end
  end
end
