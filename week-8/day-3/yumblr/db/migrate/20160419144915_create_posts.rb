class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :image_url, null: false
      t.text :body, limit: 1000

      t.timestamps null: false
    end
  end
end
