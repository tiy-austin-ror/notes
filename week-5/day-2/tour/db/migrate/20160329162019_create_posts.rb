class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps null: false
      # created_at
      # updated_at
      # (automatically updated by rails on create and update)
    end
  end
end
