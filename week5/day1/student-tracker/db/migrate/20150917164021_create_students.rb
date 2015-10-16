class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.float :gpa, default: 0
      t.integer :course_id, null: false

      t.timestamps null: false
    end
  end
end
