class Poll < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions

  def not_taken?
    answers.count.zero?
  end

  def as_json(_ = nil)
    {
      id: self.id,
      name: self.name,
      description: self.description,
      user: self.user,
      questions: self.questions,
      answers: self.answers
    }
  end
end
