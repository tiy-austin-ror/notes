class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :student, index: true, foreign_key: true
    end
  end
end
