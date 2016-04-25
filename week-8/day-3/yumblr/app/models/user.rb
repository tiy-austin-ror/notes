class User < ActiveRecord::Base
  has_many :posts
  has_many :tags, through: :posts
  has_secure_password

  def as_json(_ = nil)
    super(include: :posts, except: :password_digest)
  end
end
