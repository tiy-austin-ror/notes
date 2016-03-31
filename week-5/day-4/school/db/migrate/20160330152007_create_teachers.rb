class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.integer :age, default: 0
      t.date :hire_date
      t.belongs_to :school, index: true, foreign_key: true
    end
  end
end
