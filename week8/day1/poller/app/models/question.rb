class Question < ApplicationRecord
  belongs_to :poll
  has_many :answers

  def no_answers?
    @no_answers ||= answers.count.zero?
  end

  def recent_answers
    @recent_answers ||= answers.limit(10)
  end

  def recent_answer_for(user)
    @recent_answer_for ||= answers.where(user_id: user.id).last
  end

  def mode_of_answers
    @mode_of_answers ||= answers.group(:rating).order("count_id DESC").limit(1).count(:id).keys.first
  end

  def average_of_answers
    @average_of_answers ||= answers.average(:rating).to_f.round(2)
  end
end
