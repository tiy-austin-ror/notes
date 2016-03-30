class Student < ActiveRecord::Base
  belongs_to :school

  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :teachers, through: :courses

  validates :name, presence: true
  validates :age, numericality: {
    only_integer: true,
    greater_than: 16
  }

end
