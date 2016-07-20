class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, default: ""
      t.text :body, default: ""
      t.belongs_to :user, foreign_key: true
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
