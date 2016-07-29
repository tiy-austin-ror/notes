class Poll < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions

  def not_taken?
    answers.count.zero?
  end
end
