class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :body, null: false
      t.belongs_to :poll, foreign_key: true

      t.timestamps
    end
  end
end
