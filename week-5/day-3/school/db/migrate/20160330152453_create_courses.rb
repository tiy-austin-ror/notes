class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :duration
      t.belongs_to :teacher, index: true, foreign_key: true
    end
  end
end
