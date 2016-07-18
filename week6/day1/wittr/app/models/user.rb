class User < ApplicationRecord
  has_many :wits

  #Example of memoization
  def wits_count
    @wits_count ||= wits.count
  end
end
