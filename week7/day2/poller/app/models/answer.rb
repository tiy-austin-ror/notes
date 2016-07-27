class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  def poll
    question.poll
  end
end
