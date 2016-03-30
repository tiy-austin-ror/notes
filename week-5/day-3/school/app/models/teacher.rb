class Teacher < ActiveRecord::Base
  belongs_to :school

  has_many :courses
  has_many :enrollments, through: :courses
  has_many :students, through: :enrollments

  validates :name, presence: true
  validates :age, numericality: {
    only_integer: true,
    greater_than: 18
  }

end
