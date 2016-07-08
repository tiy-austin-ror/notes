class Address < ApplicationRecord
  belongs_to :user

#  def user
#    User.find_by(id: self.user_id)
#  end

end
